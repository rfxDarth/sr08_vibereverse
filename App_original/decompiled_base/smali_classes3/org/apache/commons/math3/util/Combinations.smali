.class public Lorg/apache/commons/math3/util/Combinations;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;,
        Lorg/apache/commons/math3/util/Combinations$SingletonIterator;,
        Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;,
        Lorg/apache/commons/math3/util/Combinations$IterationOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "[I>;"
    }
.end annotation


# instance fields
.field private final iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

.field private final k:I

.field private final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Combinations;-><init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V

    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 108
    iput p1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    .line 109
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    .line 110
    iput-object p3, p0, Lorg/apache/commons/math3/util/Combinations;->iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation

    .line 161
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;-><init>(II)V

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    .line 133
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$1;->$SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations;->iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;-><init>(II)V

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 135
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;-><init>([I)V

    return-object v0
.end method
