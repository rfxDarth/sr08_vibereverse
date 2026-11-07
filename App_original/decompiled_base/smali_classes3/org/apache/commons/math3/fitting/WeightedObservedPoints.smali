.class public Lorg/apache/commons/math3/fitting/WeightedObservedPoints;
.super Ljava/lang/Object;
.source "WeightedObservedPoints.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332bfdL


# instance fields
.field private final observations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 52
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->add(DDD)V

    return-void
.end method

.method public add(DDD)V
    .locals 8

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
