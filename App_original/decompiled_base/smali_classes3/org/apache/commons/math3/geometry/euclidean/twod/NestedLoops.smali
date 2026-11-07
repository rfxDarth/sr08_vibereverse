.class Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
.super Ljava/lang/Object;
.source "NestedLoops.java"


# instance fields
.field private loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private originalIsClockwise:Z

.field private polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private surrounded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 75
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p2

    .line 86
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    .line 88
    aget-object v2, v1, v9

    if-eqz v2, :cond_2

    .line 92
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 94
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 97
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    array-length v2, v1

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    aget-object v2, v1, v2

    const/4 v12, 0x0

    .line 99
    :goto_0
    array-length v3, v1

    if-ge v12, v3, :cond_0

    .line 101
    aget-object v13, v1, v12

    .line 102
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v14, v2, v13, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 103
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v14, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    invoke-virtual {v14, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v15

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v15

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 107
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v3, v14, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object v2, v13

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v1, v10, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 112
    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 114
    iput-boolean v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    return-void

    .line 116
    :cond_1
    iput-boolean v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    return-void

    .line 89
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method private add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 139
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-direct {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 148
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 155
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 156
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 157
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 158
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSING_BOUNDARY_LOOPS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 162
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setClockWise(Z)V
    .locals 6

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    .line 188
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v4, v3, v2

    .line 189
    aget-object v5, v3, v0

    aput-object v5, v3, v2

    .line 190
    aput-object v4, v3, v0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    xor-int/lit8 v2, p1, 0x1

    .line 196
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public add([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    return-void
.end method

.method public correctOrientation()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    const/4 v2, 0x1

    .line 173
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
