.class Lorg/apache/commons/math3/util/Combinations$SingletonIterator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[I>;"
    }
.end annotation


# instance fields
.field private more:Z

.field private final singleton:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    .line 302
    iput-object p1, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->singleton:[I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->next()[I

    move-result-object v0

    return-object v0
.end method

.method public next()[I
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    .line 312
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->singleton:[I

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
