.class public Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
.super Ljava/lang/Object;
.source "LimitAngle.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private direct:Z

.field private location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    .line 47
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    .line 48
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    return-void
.end method


# virtual methods
.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    move-result-object v0

    return-object v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .locals 0

    return-object p0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .line 62
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 63
    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    if-eqz p1, :cond_0

    return-wide v0

    :cond_0
    neg-double v0, v0

    return-wide v0
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;
    .locals 5

    .line 80
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    xor-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    return-wide v0
.end method

.method public isDirect()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    return v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->location:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-object p1
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    iget-boolean p1, p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->direct:Z

    xor-int/2addr p1, v0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object v0

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeSpace()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 3

    .line 103
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(D)V

    return-object v0
.end method
