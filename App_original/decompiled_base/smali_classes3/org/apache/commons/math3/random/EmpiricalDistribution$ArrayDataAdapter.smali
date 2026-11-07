.class Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayDataAdapter"
.end annotation


# instance fields
.field private inputArray:[D

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 396
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 397
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    return-void
.end method


# virtual methods
.method public computeBinStats()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v4, v3, v0

    invoke-static {v2, v4, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 415
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
