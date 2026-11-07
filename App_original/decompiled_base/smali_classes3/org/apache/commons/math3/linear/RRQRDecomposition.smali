.class public Lorg/apache/commons/math3/linear/RRQRDecomposition;
.super Lorg/apache/commons/math3/linear/QRDecomposition;
.source "RRQRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private p:[I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RRQRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 3

    .line 88
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 90
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v0, v0

    .line 140
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getRank(D)I
    .locals 13

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 170
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 172
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v3

    const/4 v5, 0x1

    move-wide v6, v3

    .line 174
    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    if-ge v5, v8, :cond_1

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v2, -0x1

    .line 175
    invoke-interface {v0, v5, v8, v5, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_1

    div-double v6, v8, v6

    mul-double v6, v6, v3

    cmpg-double v10, v6, p1

    if-gez v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-wide v6, v8

    goto :goto_0

    :cond_1
    :goto_1
    return v5
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    .line 199
    new-instance v0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;

    invoke-super {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 12

    const-wide/16 v0, 0x0

    move v2, p1

    move v3, v2

    move-wide v4, v0

    .line 105
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_2

    const/4 v6, 0x0

    move-wide v7, v0

    .line 107
    :goto_1
    aget-object v9, p2, v2

    array-length v10, v9

    if-ge v6, v10, :cond_0

    .line 108
    aget-wide v10, v9, v6

    mul-double v10, v10, v10

    add-double/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v6, v7, v4

    if-lez v6, :cond_1

    move v3, v2

    move-wide v4, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, p1, :cond_3

    .line 117
    aget-object v0, p2, p1

    .line 118
    aget-object v1, p2, v3

    aput-object v1, p2, p1

    .line 119
    aput-object v0, p2, v3

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v1, v0, p1

    .line 121
    aget v2, v0, v3

    aput v2, v0, p1

    .line 122
    aput v1, v0, v3

    .line 125
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    return-void
.end method
