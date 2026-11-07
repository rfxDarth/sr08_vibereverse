.class public Lorg/apache/commons/math3/stat/clustering/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2fc57ef5231e3010L


# instance fields
.field private final center:Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->center:Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->center:Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/Cluster;->points:Ljava/util/List;

    return-object v0
.end method
