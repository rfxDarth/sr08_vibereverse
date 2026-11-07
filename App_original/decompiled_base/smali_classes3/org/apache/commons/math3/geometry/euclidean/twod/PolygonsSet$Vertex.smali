.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
.super Ljava/lang/Object;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vertex"
.end annotation


# instance fields
.field private incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 434
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 435
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    return-object v0
.end method

.method public setIncoming(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 482
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-void
.end method

.method public setOutgoing(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 501
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-void
.end method

.method public sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 4

    .line 463
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 464
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    if-ne v1, v3, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
