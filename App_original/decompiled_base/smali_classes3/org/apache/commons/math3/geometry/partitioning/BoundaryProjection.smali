.class public Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
.super Ljava/lang/Object;
.source "BoundaryProjection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final offset:D

.field private final original:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final projected:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->original:Lorg/apache/commons/math3/geometry/Point;

    .line 49
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 50
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->offset:D

    return-void
.end method


# virtual methods
.method public getOffset()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->offset:D

    return-wide v0
.end method

.method public getOriginal()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->original:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getProjected()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->projected:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method
