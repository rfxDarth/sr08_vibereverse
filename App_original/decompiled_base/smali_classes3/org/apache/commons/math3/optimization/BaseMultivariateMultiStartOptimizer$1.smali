.class Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;
.super Ljava/lang/Object;
.source "BaseMultivariateMultiStartOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optimization/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;

.field final synthetic val$goal:Lorg/apache/commons/math3/optimization/GoalType;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->this$0:Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->val$goal:Lorg/apache/commons/math3/optimization/GoalType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 178
    check-cast p1, Lorg/apache/commons/math3/optimization/PointValuePair;

    check-cast p2, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I
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

    .line 186
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 187
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 188
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;->val$goal:Lorg/apache/commons/math3/optimization/GoalType;

    sget-object v3, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v2, v3, :cond_3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    :cond_3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
