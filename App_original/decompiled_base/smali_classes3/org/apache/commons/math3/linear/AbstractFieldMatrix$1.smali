.class Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;
.source "AbstractFieldMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getSubMatrix([I[I)Lorg/apache/commons/math3/linear/FieldMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

.field final synthetic val$selectedColumns:[I

.field final synthetic val$selectedRows:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[I[I)V
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->val$selectedRows:[I

    iput-object p4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->val$selectedColumns:[I

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    .line 376
    iget-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->val$selectedRows:[I

    aget p1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;->val$selectedColumns:[I

    aget p2, v0, p2

    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method
