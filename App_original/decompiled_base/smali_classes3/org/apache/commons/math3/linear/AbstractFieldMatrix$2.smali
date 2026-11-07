.class Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "AbstractFieldMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copySubMatrix(IIII[[Lorg/apache/commons/math3/FieldElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private startColumn:I

.field private startRow:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

.field final synthetic val$destination:[[Lorg/apache/commons/math3/FieldElement;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->val$destination:[[Lorg/apache/commons/math3/FieldElement;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public start(IIIIII)V
    .locals 0

    .line 416
    iput p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startRow:I

    .line 417
    iput p5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startColumn:I

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->val$destination:[[Lorg/apache/commons/math3/FieldElement;

    iget v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startRow:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    iget v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startColumn:I

    sub-int/2addr p2, v0

    aput-object p3, p1, p2

    return-void
.end method
