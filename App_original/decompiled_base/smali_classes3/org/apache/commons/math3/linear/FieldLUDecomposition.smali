.class public Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.super Ljava/lang/Object;
.source "FieldLUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private even:Z

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lu:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v0

    .line 92
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    .line 93
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    .line 94
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 96
    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 97
    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 101
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 104
    iput-boolean p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_a

    .line 109
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 113
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v3

    .line 114
    aget-object v5, v4, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_1

    .line 116
    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v6

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 118
    :cond_1
    aput-object v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v4, v3

    :goto_4
    if-ge v3, v0, :cond_5

    .line 124
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    .line 125
    aget-object v6, v5, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_3

    .line 127
    aget-object v8, v5, v7

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v7

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 129
    :cond_3
    aput-object v6, v5, v2

    .line 131
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    if-lt v4, v0, :cond_6

    .line 139
    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    return-void

    :cond_6
    if-eq v4, v2, :cond_8

    .line 145
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_7

    .line 147
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v5, v4

    aget-object v7, v6, v3

    .line 148
    aget-object v8, v5, v2

    aget-object v8, v8, v3

    aput-object v8, v6, v3

    .line 149
    aget-object v5, v5, v2

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 151
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v5, v3, v4

    .line 152
    aget v6, v3, v2

    aput v6, v3, v4

    .line 153
    aput v5, v3, v2

    .line 154
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    .line 158
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_7
    if-ge v5, v0, :cond_9

    .line 160
    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v5

    .line 161
    aget-object v7, v6, v2

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move v2, v4

    goto/16 :goto_1

    :cond_a
    return-void

    .line 87
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getDeterminant()Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 240
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 244
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->even:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 246
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 175
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 179
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v6, v3, v4

    invoke-interface {v5, v2, v4, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v2, v2, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 218
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 220
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method

.method public getPivot()[I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<",
            "TT;>;"
        }
    .end annotation

    .line 257
    new-instance v0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->pivot:[I

    array-length v0, v0

    .line 195
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    .line 199
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v3

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object v0
.end method
