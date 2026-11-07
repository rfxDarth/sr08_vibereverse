.class public Lorg/apache/commons/math3/linear/SparseFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "SparseFieldMatrix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final columns:I

.field private final entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rows:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 54
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 55
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 71
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 72
    iput p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 73
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 96
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 97
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 99
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    if-ge v2, v3, :cond_0

    .line 100
    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 83
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    .line 84
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    .line 85
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method private computeKey(II)I
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    mul-int p1, p1, v0

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 109
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 110
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result p1

    .line 111
    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 113
    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    return-void

    .line 115
    :cond_0
    iget-object p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->columns:I

    return v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 141
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public getRowDimension()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->rows:I

    return v0
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 155
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 156
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result p1

    .line 157
    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 159
    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    return-void

    .line 161
    :cond_0
    iget-object p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkRowIndex(I)V

    .line 170
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->checkColumnIndex(I)V

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    return-void
.end method
