.class public Lorg/apache/commons/math3/optim/SimplePointChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SimplePointChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Lorg/apache/commons/math3/util/Pair<",
        "[D+",
        "Ljava/lang/Object;",
        ">;>",
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<",
        "TPAIR;>;"
    }
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    if-lez p5, :cond_0

    .line 93
    iput p5, p0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    return-void

    .line 91
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    check-cast p3, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/SimplePointChecker;->converged(ILorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation

    .line 116
    iget v0, p0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    return v2

    .line 120
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 121
    invoke-virtual {p3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 122
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 123
    aget-wide v3, p1, v0

    .line 124
    aget-wide v5, p2, v0

    sub-double v7, v3, v5

    .line 125
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 126
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/SimplePointChecker;->getRelativeThreshold()D

    move-result-wide v5

    mul-double v3, v3, v5

    cmpl-double v1, v7, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/SimplePointChecker;->getAbsoluteThreshold()D

    move-result-wide v3

    cmpl-double v1, v7, v3

    if-lez v1, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
