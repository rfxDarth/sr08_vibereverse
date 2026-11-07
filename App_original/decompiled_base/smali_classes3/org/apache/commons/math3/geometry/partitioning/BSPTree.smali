.class public Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
.super Ljava/lang/Object;
.source "BSPTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private attribute:Ljava/lang/Object;

.field private cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 90
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 91
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 99
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 101
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 102
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 121
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 122
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 124
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 125
    iput-object p0, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 126
    iput-object p0, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void
.end method

.method private chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 718
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    :cond_0
    return-void
.end method

.method private chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 731
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 732
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    .line 733
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    :cond_0
    return-void
.end method

.method private condense()V
    .locals 3

    .line 397
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v2, :cond_3

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    :cond_2
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 402
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 403
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :cond_3
    return-void
.end method

.method private fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    move-object v0, p0

    .line 297
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v1, :cond_1

    .line 298
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v0, v2, :cond_0

    .line 299
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    goto :goto_1

    .line 301
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    .line 297
    :goto_1
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    .line 448
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object p1, v0

    move-object v0, p2

    .line 449
    iget-object p2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez p2, :cond_1

    const/4 v5, 0x0

    move-object v2, p0

    .line 451
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, p0

    .line 454
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 456
    iput-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v4, :cond_2

    .line 458
    iput-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 460
    :cond_2
    iput-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 465
    :cond_3
    :goto_0
    iget-object p2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p4, 0x1

    invoke-direct {p2, p3, v0, p1, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 466
    iget-object p2, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p4, 0x0

    invoke-direct {p2, p3, v0, p1, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 467
    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 468
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p2, :cond_4

    .line 469
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    :cond_4
    return-object p1
.end method

.method private recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    .line 374
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    neg-double v2, p2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    return-void

    :cond_0
    cmpl-double v2, v0, p2

    if-lez v2, :cond_1

    .line 381
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    return-void

    .line 384
    :cond_1
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 386
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 189
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getAttribute()Ljava/lang/Object;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-object v0
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 338
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, p2

    if-gez v4, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 342
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 345
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 317
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    return-object v0
.end method

.method public getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)Z"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 159
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 168
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 169
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 170
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 171
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x1

    return p1

    .line 161
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 162
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 163
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x0

    return p1
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 631
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 633
    :cond_0
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 638
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p1, :cond_4

    move-object p1, p0

    .line 641
    :goto_1
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz p2, :cond_3

    .line 644
    iget-object p2, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    .line 648
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne p1, v0, :cond_2

    .line 649
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 650
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    goto :goto_2

    .line 653
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 654
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    .line 655
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)V

    .line 641
    :goto_2
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 662
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    :cond_4
    return-void
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 692
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    .line 695
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 697
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 698
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne p1, v3, :cond_0

    .line 699
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, v0, v2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_1

    .line 701
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, v2, v0, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    :goto_1
    move-object v0, v3

    .line 695
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0

    .line 555
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 556
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    .line 557
    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 609
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0

    .line 592
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v2

    .line 593
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    .line 594
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {v3, p1, v4, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 597
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 598
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 599
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 600
    iget-object v1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 601
    iput-object p1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 602
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 603
    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 604
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 605
    iget-object p1, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    return-object v3

    .line 576
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 577
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v1, :cond_4

    .line 578
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 580
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 581
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p1

    .line 583
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 585
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 586
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p1

    .line 560
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 561
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v1, :cond_6

    .line 562
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 564
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 565
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p1

    .line 567
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 569
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 570
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p1
.end method

.method public visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 247
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    return-void

    .line 249
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 276
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 271
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 272
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 273
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    return-void

    .line 266
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 267
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    return-void

    .line 261
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 262
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 263
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    return-void

    .line 256
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 257
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    return-void

    .line 251
    :pswitch_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 252
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 253
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
