.class public Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
.super Ljava/lang/Object;
.source "StatisticalSummaryValues.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;


# static fields
.field private static final serialVersionUID:J = -0x46e64c6929212928L


# instance fields
.field private final max:D

.field private final mean:D

.field private final min:D

.field private final n:J

.field private final sum:D

.field private final variance:D


# direct methods
.method public constructor <init>(DDJDDD)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->mean:D

    .line 68
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    .line 69
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->n:J

    .line 70
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->max:D

    .line 71
    iput-wide p9, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->min:D

    .line 72
    iput-wide p11, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->sum:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 137
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 140
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    .line 141
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getMax()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->max:D

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->mean:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->min:D

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->n:J

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->sum:D

    return-wide v0
.end method

.method public getVariance()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->variance:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StatisticalSummaryValues:\nn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nmin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nmax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMax()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nmean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nstd dev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nvariance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getVariance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nsum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;->getSum()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
