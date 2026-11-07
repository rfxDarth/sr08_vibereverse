.class public Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
.super Ljava/lang/Object;
.source "OpenIntToDoubleHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation


# instance fields
.field private current:I

.field private next:I

.field private final referenceCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    const/4 p1, -0x1

    .line 501
    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$1;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 560
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 565
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    .line 569
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$400(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[B

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :catch_0
    nop

    const/4 v0, -0x2

    .line 573
    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    .line 574
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-ltz v0, :cond_1

    :cond_0
    return-void

    .line 575
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 561
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 515
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->next:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public key()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 526
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 529
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-ltz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$200(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[I

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    aget v0, v0, v1

    return v0

    .line 530
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 527
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public value()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 543
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 546
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    if-ltz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->access$300(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[D

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->current:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 547
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 544
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
