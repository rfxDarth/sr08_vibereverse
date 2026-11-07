.class public Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;
.super Ljava/lang/Object;
.source "WelzlEncloser.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/Encloser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/Encloser<",
        "TS;TP;>;"
    }
.end annotation


# instance fields
.field private final generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
            "TS;TP;>;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
            "TS;TP;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    .line 58
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    return-void
.end method

.method private moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;I",
            "Ljava/util/List<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/Point;

    .line 135
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, p1, v2, p3}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 141
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v4, v2

    :goto_1
    if-lez v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    .line 146
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private pivotingBall(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/Point;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    .line 93
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v1, v4, v2}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 110
    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, v4

    goto :goto_0

    .line 105
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1
.end method


# virtual methods
.method public enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->pivotingBall(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object p1

    return-object p1
.end method

.method public selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;)TP;"
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object p2

    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/Point;

    .line 171
    invoke-interface {v3, p2}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method
