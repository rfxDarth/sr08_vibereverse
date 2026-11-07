.class public Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
.super Ljava/lang/Object;
.source "OrientedPoint.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private direct:Z

.field private location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 65
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 53
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    .line 54
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 87
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 88
    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    if-eqz p1, :cond_0

    return-wide v0

    :cond_0
    neg-double v0, v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    return-wide v0
.end method

.method public isDirect()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    return v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->location:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object p1
.end method

.method public revertSelf()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    iget-boolean p1, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->direct:Z

    xor-int/2addr p1, v0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;
    .locals 2

    .line 103
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 3

    .line 111
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v0

    return-object v0
.end method
