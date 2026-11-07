.class Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BigFractionMatrixConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 675
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 3

    .line 697
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public start(IIIIII)V
    .locals 0

    const/4 p3, 0x2

    .line 682
    new-array p3, p3, [I

    const/4 p4, 0x1

    aput p2, p3, p4

    const/4 p2, 0x0

    aput p1, p3, p2

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    return-void
.end method

.method public bridge synthetic visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0

    .line 670
    check-cast p3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->visit(IILorg/apache/commons/math3/fraction/BigFraction;)V

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/fraction/BigFraction;)V
    .locals 2

    .line 688
    iget-object v0, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    aget-object p1, v0, p1

    invoke-virtual {p3}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p1, p2

    return-void
.end method
