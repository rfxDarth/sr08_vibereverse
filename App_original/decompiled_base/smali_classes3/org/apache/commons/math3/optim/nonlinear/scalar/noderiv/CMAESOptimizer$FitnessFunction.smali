.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 936
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object p0

    return-object p0
.end method

.method private penalty([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1005
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1006
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    neg-double p1, v0

    return-wide p1
.end method

.method private repair([D)[D
    .locals 9

    .line 982
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 983
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 985
    array-length v2, p1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 986
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 987
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 988
    aput-wide v6, v2, v3

    goto :goto_1

    .line 989
    :cond_0
    aget-wide v6, v1, v3

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 990
    aput-wide v6, v2, v3

    goto :goto_1

    .line 992
    :cond_1
    aput-wide v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 9

    .line 963
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 964
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 966
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 967
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    return v2

    .line 970
    :cond_0
    aget-wide v6, v1, v3

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .locals 5

    .line 946
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v0, :cond_0

    .line 947
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    .line 948
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 949
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v3

    goto :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 953
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-double v1, v1

    .line 954
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    neg-double v3, v3

    .line 955
    :goto_2
    new-instance p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;-><init>(DD)V

    return-object p1
.end method
