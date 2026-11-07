.class public Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
.super Ljava/lang/Object;
.source "EnclosingBall.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133505eL


# instance fields
.field private final center:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final radius:D

.field private final support:[Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D[TP;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    .line 54
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    .line 55
    invoke-virtual {p4}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/geometry/Point;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/Point;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Lorg/apache/commons/math3/geometry/Point;D)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D)Z"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    add-double/2addr v2, p2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCenter()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    return-wide v0
.end method

.method public getSupport()[Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getSupportSize()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    array-length v0, v0

    return v0
.end method
