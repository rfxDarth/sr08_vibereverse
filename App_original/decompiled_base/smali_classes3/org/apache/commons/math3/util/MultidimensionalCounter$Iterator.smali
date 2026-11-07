.class public Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
.super Ljava/lang/Object;
.source "MultidimensionalCounter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MultidimensionalCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private final counter:[I

.field private final maxCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V
    .locals 3

    .line 90
    iput-object p1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$000(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    .line 84
    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$100(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->maxCount:I

    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result p1

    aput v1, v0, p1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    return v0
.end method

.method public getCount(I)I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget p1, v0, p1

    return p1
.end method

.method public getCounts()[I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 98
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->maxCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-static {v0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 113
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->this$0:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-static {v2}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->access$300(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I

    move-result-object v2

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->counter:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 121
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 109
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
