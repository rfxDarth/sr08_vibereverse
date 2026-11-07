.class Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    iget-object v0, v0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 208
    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    iget-object v1, v1, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-static {v1}, Lorg/apache/commons/math3/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    add-int/lit8 v4, v2, 0x1

    .line 209
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;->this$1:Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-static {v5}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->access$100(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v5

    aput-wide v5, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
