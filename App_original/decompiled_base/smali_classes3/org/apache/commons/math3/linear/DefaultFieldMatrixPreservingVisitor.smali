.class public Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.super Ljava/lang/Object;
.source "DefaultFieldMatrixPreservingVisitor.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zero:Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;->zero:Lorg/apache/commons/math3/FieldElement;

    return-void
.end method


# virtual methods
.method public end()Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;->zero:Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public start(IIIIII)V
    .locals 0

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    return-void
.end method
