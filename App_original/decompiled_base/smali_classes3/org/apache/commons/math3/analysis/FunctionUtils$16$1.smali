.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

.field final synthetic val$k:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;I)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iput p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 11

    .line 543
    array-length v0, p1

    .line 546
    new-array v1, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 548
    iget v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    if-ne v2, v4, :cond_0

    .line 549
    new-instance v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v8, 0x0

    aget-wide v9, p1, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v5, v1, v2

    goto :goto_1

    .line 551
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v5, p1, v2

    invoke-direct {v4, v3, v3, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 557
    filled-new-array {v3}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v0

    return-wide v0
.end method
