.class Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;
.super Ljava/lang/Object;
.source "AbstractRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getFrobeniusNorm()D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sum:D

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 289
    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    return-void
.end method

.method public visit(IID)V
    .locals 0

    .line 294
    iget-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    mul-double p3, p3, p3

    add-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    return-void
.end method
