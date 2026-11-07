.class public Lorg/apache/commons/math3/ml/clustering/CentroidCluster;
.super Lorg/apache/commons/math3/ml/clustering/Cluster;
.source "CentroidCluster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Cluster<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2aad9e9d511ccac0L


# instance fields
.field private final center:Lorg/apache/commons/math3/ml/clustering/Clusterable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/Cluster;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->center:Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-void
.end method


# virtual methods
.method public getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->center:Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v0
.end method
