.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private angle:D

.field private cos:D

.field private originOffset:D

.field private sin:D

.field private final tolerance:D


# direct methods
.method private constructor <init>(DDDDD)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 117
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 118
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 119
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 120
    iput-wide p9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method synthetic constructor <init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 151
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 152
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 153
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 154
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 141
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 103
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 131
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 92
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public static getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/geom/AffineTransform;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 419
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 4

    .line 342
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 159
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAngle()D
    .locals 4

    .line 378
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 315
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 316
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 8

    .line 301
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    if-lez v6, :cond_0

    neg-double v2, v2

    :cond_0
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOriginOffset()D
    .locals 2

    .line 394
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 10

    .line 332
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    .line 333
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    sub-double/2addr p2, v2

    .line 334
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v4, v0, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    mul-double v0, v0, v6

    mul-double p2, p2, v2

    sub-double/2addr v0, p2

    invoke-direct {p1, v4, v5, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 11

    .line 214
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    sub-double/2addr v1, v3

    :goto_0
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v7, v7

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 274
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 11

    .line 255
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v0, v0, v2

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 256
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    mul-double v3, v3, v5

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    mul-double v7, v7, v9

    sub-double/2addr v3, v7

    div-double/2addr v3, v0

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v7, v7, v5

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v5, v5, v9

    sub-double/2addr v7, v5

    div-double/2addr v7, v0

    invoke-direct {v2, v3, v4, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v2
.end method

.method public isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z
    .locals 6

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 189
    invoke-static {p2, p3, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 190
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 191
    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 192
    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    mul-double p2, p2, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    mul-double v0, v0, v2

    sub-double/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 9

    .line 168
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 169
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 170
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_0

    .line 172
    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 173
    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 174
    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 175
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void

    :cond_0
    neg-double v2, v2

    neg-double v0, v0

    .line 177
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 178
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 179
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 180
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p1

    mul-double v2, v2, p1

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public revertSelf()V
    .locals 5

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    add-double/2addr v0, v2

    .line 199
    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    .line 201
    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 203
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 204
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 205
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)Z"
        }
    .end annotation

    .line 321
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 322
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAngle(D)V
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 385
    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 386
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 387
    iget-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    return-void
.end method

.method public setOriginOffset(D)V
    .locals 0

    .line 401
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 244
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    .line 245
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    mul-double v4, v0, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    mul-double v0, v0, v8

    mul-double v6, v6, v2

    add-double/2addr v0, v6

    invoke-direct {p1, v4, v5, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 238
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 239
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    mul-double v1, v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 6

    .line 371
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .locals 4

    .line 279
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3

    .line 287
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v0

    return-object v0
.end method
