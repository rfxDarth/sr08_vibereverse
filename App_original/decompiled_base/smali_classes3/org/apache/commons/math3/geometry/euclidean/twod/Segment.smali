.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 44
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 45
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 10

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 86
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 88
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    mul-double v0, v0, v4

    add-double/2addr v6, v0

    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    .line 109
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v2, v6, v7, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 110
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v2

    .line 102
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
