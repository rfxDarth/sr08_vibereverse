.class Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamDataAdapter"
.end annotation


# instance fields
.field private inputStream:Ljava/io/BufferedReader;

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V
    .locals 1

    .line 345
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 347
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public computeBinStats()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 357
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v3, v0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 358
    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    return-void
.end method

.method public computeStats()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 371
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 373
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    return-void
.end method
