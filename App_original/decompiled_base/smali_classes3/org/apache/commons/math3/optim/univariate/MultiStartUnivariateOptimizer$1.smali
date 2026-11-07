.class Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;
.super Ljava/lang/Object;
.source "MultiStartUnivariateOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;

.field final synthetic val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 213
    check-cast p1, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    check-cast p2, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->compare(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)I
    .locals 4

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 221
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    .line 222
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide p1

    .line 223
    iget-object v2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;->val$goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    sget-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v2, v3, :cond_3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    :cond_3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
