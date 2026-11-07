.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.super Ljava/lang/Object;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;,
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-void
.end method

.method static synthetic access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p1
.end method


# virtual methods
.method public delete(Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 86
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 87
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->delete()V

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    return v0

    .line 83
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    return-object v0
.end method

.method public getNotLarger(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 185
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 186
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    .line 189
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 195
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 154
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 155
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    .line 158
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 164
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->top:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    return v0
.end method
