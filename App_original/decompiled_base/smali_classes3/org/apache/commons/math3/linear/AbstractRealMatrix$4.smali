.class Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;
.source "AbstractRealMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copySubMatrix(IIII[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startColumn:I

.field private startRow:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

.field final synthetic val$destination:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[[D)V
    .locals 0

    .line 363
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->val$destination:[[D

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public start(IIIIII)V
    .locals 0

    .line 376
    iput p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->startRow:I

    .line 377
    iput p5, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->startColumn:I

    return-void
.end method

.method public visit(IID)V
    .locals 2

    .line 383
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->val$destination:[[D

    iget v1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->startRow:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    iget v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;->startColumn:I

    sub-int/2addr p2, v0

    aput-wide p3, p1, p2

    return-void
.end method
