.class public Lorg/apache/commons/math3/linear/JacobiPreconditioner;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "JacobiPreconditioner.java"


# instance fields
.field private final diag:Lorg/apache/commons/math3/linear/ArrayRealVector;


# direct methods
.method public constructor <init>([DZ)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void
.end method

.method public static create(Lorg/apache/commons/math3/linear/RealLinearOperator;)Lorg/apache/commons/math3/linear/JacobiPreconditioner;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 66
    new-array v1, v0, [D

    .line 67
    instance-of v2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 68
    check-cast p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 70
    invoke-virtual {p0, v2, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    const-wide/16 v5, 0x0

    .line 75
    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->set(D)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 76
    invoke-virtual {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 77
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/math3/linear/JacobiPreconditioner;-><init>([DZ)V

    return-object p0

    .line 64
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 99
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Sqrt;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/function/Sqrt;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    .line 114
    new-instance v1, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;-><init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v1
.end method
