.class Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

.field private valueRange:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V
    .locals 2

    .line 1017
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1018
    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    const/4 p1, 0x1

    .line 1019
    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 0

    .line 1006
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object p0

    return-object p0
.end method

.method private penalty([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1092
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1093
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 1094
    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    neg-double p1, v0

    return-wide p1
.end method

.method private repair([D)[D
    .locals 9

    .line 1069
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 1072
    array-length v2, p1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 1073
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1074
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 1075
    aput-wide v6, v2, v3

    goto :goto_1

    .line 1076
    :cond_0
    aget-wide v6, v1, v3

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 1077
    aput-wide v6, v2, v3

    goto :goto_1

    .line 1079
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

    .line 1043
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1046
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1047
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    return v2

    .line 1050
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

.method public setValueRange(D)V
    .locals 0

    .line 1061
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->valueRange:D

    return-void
.end method

.method public value([D)D
    .locals 5

    .line 1028
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    .line 1030
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 1035
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v1

    :cond_1
    neg-double v0, v1

    return-wide v0
.end method
