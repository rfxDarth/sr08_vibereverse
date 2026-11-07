.class Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;
.super Ljava/lang/Object;
.source "IntervalsSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubIntervalsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[D>;"
    }
.end annotation


# instance fields
.field private current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private pending:[D

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V
    .locals 5

    .line 593
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-static {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$000(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$100(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    new-array p1, v1, [D

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    return-void

    .line 607
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v3

    new-array p1, v1, [D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v0, p1, v2

    const/4 v0, 0x1

    aput-wide v3, p1, v0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    return-void

    .line 614
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->selectPending()V

    return-void

    nop

    :array_0
    .array-data 8
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method private selectPending()V
    .locals 8

    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_0
    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$400(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 630
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 631
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    return-void

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 637
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 638
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 644
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v0

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    new-array v5, v5, [D

    aput-wide v0, v5, v4

    aput-wide v6, v5, v3

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 649
    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void

    .line 654
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->this$0:Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    new-array v0, v5, [D

    aput-wide v6, v0, v4

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v4, v0, v3

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    .line 659
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->next()[D

    move-result-object v0

    return-object v0
.end method

.method public next()[D
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->pending:[D

    if-eqz v0, :cond_0

    .line 676
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;->selectPending()V

    return-object v0

    .line 673
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 682
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
