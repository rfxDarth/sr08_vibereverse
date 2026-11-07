.class Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;
.super Ljava/lang/Object;
.source "NonLinearConjugateGradientOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineSearchFunction"
.end annotation


# instance fields
.field private final searchDirection:[D

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 8

    .line 295
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 297
    aget-wide v3, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    aget-wide v6, v5, v2

    mul-double v6, v6, p1

    add-double/2addr v3, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 305
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 306
    aget-wide v4, p1, v1

    iget-object p2, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    aget-wide v6, p2, v1

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-wide v2
.end method
