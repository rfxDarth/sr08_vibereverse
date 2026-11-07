.class public Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# instance fields
.field private final circles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

.field private final location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 48
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-object v0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 96
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 115
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method sharedCircleWith(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 78
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    if-ne v1, v3, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
