.class public Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "UncorrelatedRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field private final mean:[D

.field private final standardDeviation:[D


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    .line 74
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 75
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 76
    iput-object p2, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-void
.end method

.method public constructor <init>([D[DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    .line 60
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    .line 61
    iput-object p3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-void

    .line 57
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p3
.end method


# virtual methods
.method public nextVector()[D
    .locals 10

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    array-length v0, v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 86
    iget-object v3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    aget-wide v4, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    aget-wide v6, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
