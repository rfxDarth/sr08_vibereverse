.class Lorg/apache/commons/math3/linear/RealVector$1;
.super Ljava/lang/Object;
.source "RealVector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/math3/linear/RealVector$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field private i:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector;

.field final synthetic val$dim:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealVector;I)V
    .locals 0

    .line 754
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    iput p2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 757
    iput p2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    .line 760
    new-instance p2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 764
    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$1;->next()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 3

    .line 769
    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    if-ge v0, v1, :cond_0

    .line 770
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    .line 771
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-object v0

    .line 773
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 783
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
