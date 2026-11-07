.class Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;
.super Ljava/lang/Object;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field final synthetic val$d:[D

.field final synthetic val$n:I

.field final synthetic val$p:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;I[D[D)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    iput p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$p:[D

    iput-object p4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$d:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 7

    .line 335
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 336
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$n:I

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$p:[D

    aget-wide v3, v2, v1

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->val$d:[D

    aget-wide v5, v2, v1

    mul-double v5, v5, p1

    add-double/2addr v3, v5

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;->this$1:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    iget-object p1, p1, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide p1

    return-wide p1
.end method
