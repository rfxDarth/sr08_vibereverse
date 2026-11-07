.class Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;
.super Ljava/lang/Object;
.source "AbstractRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getNorm()D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private columnSum:D

.field private endRow:D

.field private maxColSum:D

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    .line 273
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->maxColSum:D

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 0

    int-to-double p1, p4

    .line 257
    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->endRow:D

    const-wide/16 p1, 0x0

    .line 258
    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->columnSum:D

    .line 259
    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->maxColSum:D

    return-void
.end method

.method public visit(IID)V
    .locals 3

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->columnSum:D

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p2

    add-double/2addr v0, p2

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->columnSum:D

    int-to-double p1, p1

    .line 265
    iget-wide p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->endRow:D

    cmpl-double v2, p1, p3

    if-nez v2, :cond_0

    .line 266
    iget-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->maxColSum:D

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->maxColSum:D

    const-wide/16 p1, 0x0

    .line 267
    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;->columnSum:D

    :cond_0
    return-void
.end method
