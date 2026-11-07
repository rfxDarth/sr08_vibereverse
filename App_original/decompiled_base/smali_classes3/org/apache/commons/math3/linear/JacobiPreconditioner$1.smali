.class Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "JacobiPreconditioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/JacobiPreconditioner;->sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/linear/JacobiPreconditioner;

.field final synthetic val$sqrtDiag:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;->this$0:Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;->val$sqrtDiag:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;->val$sqrtDiag:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;->val$sqrtDiag:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 118
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;->val$sqrtDiag:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method
