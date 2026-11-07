.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;
.source "MonotoneChain.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(ZD)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(ZD)V

    return-void
.end method

.method private updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->getTolerance()D

    move-result-wide v0

    .line 133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 135
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 136
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x2

    .line 143
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v4, v2, -0x1

    .line 144
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 146
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v6, v3, v5, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    .line 147
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v0

    if-gez v10, :cond_6

    .line 150
    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    cmpg-double v8, v6, v0

    if-ltz v8, :cond_5

    .line 151
    invoke-virtual {v5, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    cmpg-double v10, v8, v0

    if-gez v10, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->isIncludeCollinearPoints()Z

    move-result v3

    if-eqz v3, :cond_3

    cmpg-double v3, v6, v0

    if-gez v3, :cond_2

    move v2, v4

    .line 159
    :cond_2
    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_3
    cmpl-double v2, v6, v0

    if-lez v2, :cond_4

    .line 162
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 164
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-wide/16 v2, 0x0

    cmpl-double v5, v6, v2

    if-lez v5, :cond_7

    .line 168
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 96
    invoke-direct {p0, v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 103
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 108
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 110
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 112
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 113
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 117
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public bridge synthetic generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTolerance()D
    .locals 2

    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->getTolerance()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isIncludeCollinearPoints()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->isIncludeCollinearPoints()Z

    move-result v0

    return v0
.end method
