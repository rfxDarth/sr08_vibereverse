.class public Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "CorrelatedRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field private final mean:[D

.field private final normalized:[D

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 120
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 122
    iget-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 127
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 129
    iput-object p4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 130
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 91
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 94
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    .line 96
    new-instance p1, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 98
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    iput-object p5, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 101
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    return-void

    .line 92
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method


# virtual methods
.method public getGenerator()Lorg/apache/commons/math3/random/NormalizedRandomGenerator;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    array-length v0, v0

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public nextVector()[D
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 169
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    array-length v1, v1

    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 175
    iget-object v4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    aget-wide v5, v4, v3

    aput-wide v5, v2, v3

    const/4 v4, 0x0

    .line 176
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 177
    aget-wide v5, v2, v3

    iget-object v7, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v7, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    aget-wide v10, v9, v4

    mul-double v7, v7, v10

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method
