.class Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final value:D


# direct methods
.method constructor <init>(DI)V
    .locals 0

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    .line 970
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->index:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I
    .locals 0

    .line 958
    iget p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->index:I

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 958
    check-cast p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->compareTo(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I
    .locals 4

    .line 975
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 986
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 987
    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    check-cast p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    iget-wide v5, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 996
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    const-wide/32 v4, 0x15f34e

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
