.class Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundaryProjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# instance fields
.field private projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V
    .locals 2

    .line 134
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    .line 136
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 169
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 171
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 173
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    .line 174
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v9, v5, v7

    if-lez v9, :cond_d

    .line 175
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmpg-double v9, v3, v5

    if-gez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    xor-int v3, v3, p2

    if-eqz v3, :cond_4

    .line 181
    array-length v3, v1

    new-array v3, v3, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v4, 0x0

    .line 182
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 183
    aget-object v5, v1, v4

    .line 184
    array-length v6, v5

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 185
    aget-object v9, v5, v7

    if-nez v9, :cond_1

    const/4 v9, 0x0

    .line 186
    aput-object v9, v6, v7

    const/4 v9, 0x1

    .line 187
    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_2

    .line 188
    array-length v10, v5

    sub-int/2addr v10, v9

    aget-object v10, v5, v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 191
    :goto_3
    array-length v10, v5

    if-ge v9, v10, :cond_2

    .line 192
    array-length v10, v5

    add-int/lit8 v11, v9, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v5, v10

    aput-object v10, v6, v9

    move v9, v11

    goto :goto_3

    .line 195
    :cond_2
    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 204
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    array-length v4, v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v6, v1, v5

    .line 206
    aget-object v9, v6, v7

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_6

    .line 207
    array-length v10, v6

    sub-int/2addr v10, v8

    goto :goto_6

    :cond_6
    const/4 v10, 0x1

    .line 208
    :goto_6
    aget-object v11, v6, v10

    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    .line 209
    array-length v13, v6

    rem-int/2addr v12, v13

    .line 210
    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v14

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    move/from16 p2, v9

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    invoke-direct {v13, v14, v15, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    move v7, v10

    move v10, v12

    .line 212
    :goto_7
    array-length v8, v6

    if-ge v10, v8, :cond_b

    .line 214
    aget-object v8, v6, v10

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 215
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v11

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v14

    invoke-direct {v9, v11, v12, v14, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 217
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    invoke-direct {v8, v13, v9, v11, v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 219
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v11

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez p2, :cond_8

    const/4 v12, 0x1

    if-eq v7, v12, :cond_7

    goto :goto_8

    :cond_7
    move-wide/from16 v23, v14

    goto :goto_9

    .line 224
    :cond_8
    :goto_8
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v17

    add-double v19, v17, v14

    .line 225
    new-instance v17, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-wide/from16 v23, v14

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object/from16 v18, v13

    move-wide/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    move-object/from16 v7, v17

    .line 227
    invoke-interface {v11, v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v11

    :goto_9
    if-nez p2, :cond_a

    .line 230
    array-length v7, v6

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    if-eq v10, v7, :cond_9

    goto :goto_a

    :cond_9
    move-object/from16 v18, v9

    goto :goto_b

    :cond_a
    const/16 v16, 0x1

    .line 233
    :goto_a
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v7

    add-double v19, v7, v23

    .line 234
    new-instance v17, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-wide/from16 v21, v7

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v22}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    move-object/from16 v7, v17

    .line 236
    invoke-interface {v11, v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v11

    .line 239
    :goto_b
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v10, 0x1

    move v13, v10

    move v10, v7

    move v7, v13

    move-object/from16 v13, v18

    goto/16 :goto_7

    :cond_b
    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 247
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    .line 250
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    :cond_d
    return-void
.end method


# virtual methods
.method public getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 152
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 141
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p1
.end method
