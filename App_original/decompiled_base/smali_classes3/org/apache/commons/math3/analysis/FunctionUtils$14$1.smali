.class Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$14;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$14;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 7

    .line 466
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;->val$f:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    const/4 p2, 0x1

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide p1

    return-wide p1
.end method
