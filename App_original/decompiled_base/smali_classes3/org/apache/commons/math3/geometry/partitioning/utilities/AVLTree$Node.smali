.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
.super Ljava/lang/Object;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private element:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 248
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 249
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 250
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;
    .locals 0

    .line 224
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    .line 224
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    .line 224
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method private rebalanceLeftGrown()Z
    .locals 5

    .line 416
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 446
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 443
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 418
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 419
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 420
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 421
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 423
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 424
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 425
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 426
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    .line 436
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 437
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 432
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 433
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 429
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 439
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v1
.end method

.method private rebalanceLeftShrunk()Z
    .locals 5

    .line 494
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 530
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_1

    .line 500
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 501
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 502
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 504
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 505
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 506
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 507
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 510
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 511
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 512
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 513
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_3

    .line 523
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 524
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 520
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 515
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 516
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 526
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 496
    :cond_5
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1
.end method

.method private rebalanceRightGrown()Z
    .locals 5

    .line 455
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 485
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_1

    .line 461
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 462
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 463
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 465
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 466
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 467
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 468
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    .line 478
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 479
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 475
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 471
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 481
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v1

    .line 457
    :cond_4
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1
.end method

.method private rebalanceRightShrunk()Z
    .locals 5

    .line 539
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 575
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 541
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 544
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 545
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 546
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 547
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 549
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_3

    .line 550
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 551
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 552
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 555
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 556
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 557
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 558
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 568
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 569
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 564
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 565
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 560
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 561
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 571
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3
.end method

.method private rotateCCW()V
    .locals 3

    .line 611
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 612
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 613
    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 616
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 617
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 618
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 619
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 621
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 622
    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 624
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    .line 625
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method

.method private rotateCW()V
    .locals 3

    .line 586
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 587
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 588
    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 591
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 592
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 593
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 594
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 596
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 597
    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 599
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    .line 600
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .line 370
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    .line 372
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 373
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-void

    .line 379
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_2

    .line 381
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 382
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v1

    move v1, v0

    move-object v0, p0

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    .line 385
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    .line 386
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 387
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 388
    :goto_2
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 391
    :goto_3
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_6

    .line 393
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_4

    .line 395
    :cond_6
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :goto_4
    if-eqz v2, :cond_7

    .line 398
    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 401
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_8
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 402
    :goto_6
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v1, :cond_9

    goto :goto_8

    .line 405
    :cond_9
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method public getElement()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object v0
.end method

.method getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    .line 289
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 334
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 335
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 309
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 310
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    .line 275
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method insert(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 351
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 353
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result p1

    return p1

    .line 355
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 359
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_3

    .line 360
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 361
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result p1

    return p1

    .line 363
    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method size()I
    .locals 3

    .line 264
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
