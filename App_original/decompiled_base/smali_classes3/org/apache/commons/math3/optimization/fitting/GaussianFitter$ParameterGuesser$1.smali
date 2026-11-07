.class Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 187
    check-cast p1, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    check-cast p2, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    .line 199
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_3

    return v1

    .line 202
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_4

    return v2

    .line 205
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_5

    return v1

    .line 208
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_6

    return v2

    .line 211
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_7

    return v1

    .line 214
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide p1

    cmpl-double v1, v3, p1

    if-lez v1, :cond_8

    return v2

    :cond_8
    return v0
.end method
