.class public Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "CurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;,
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final observations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addObservedPoint(DD)V
    .locals 7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 97
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->addObservedPoint(DDD)V

    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 8

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearObservations()V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [D

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 181
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 182
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v2

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->oldOptimizer:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    new-instance v3, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$OldTheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    move v2, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    goto :goto_1

    :cond_1
    move v2, p1

    move-object v6, p3

    .line 193
    new-instance v3, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    .line 198
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPointRef()[D

    move-result-object p1

    return-object p1
.end method

.method public fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[D)[D"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 154
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p1

    return-object p1
.end method

.method public getObservations()[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    return-object v0
.end method
