.class Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;
.super Ljava/lang/Object;
.source "MonotoneChain.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;->this$0:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;->compare(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I
    .locals 4

    .line 84
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1

    :cond_0
    return v0
.end method
