.class Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;
.super Ljava/lang/Object;
.source "AbstractRealDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;

.field final synthetic val$p:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/distribution/AbstractRealDistribution;D)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;->this$0:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;

    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;->val$p:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;->this$0:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;->val$p:D

    sub-double/2addr p1, v0

    return-wide p1
.end method
