.class public Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;
.super Ljava/lang/Object;
.source "MannWhitneyUTest.java"


# instance fields
.field private naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method private calculateAsymptoticPValue(DII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    int-to-long v0, p3

    int-to-long v2, p4

    mul-long v0, v0, v2

    long-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x1

    int-to-long p3, p3

    mul-long v0, v0, p3

    long-to-double p3, v0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double/2addr p3, v0

    sub-double/2addr p1, v2

    .line 182
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    .line 185
    new-instance p3, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p3, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(DD)V

    .line 187
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    mul-double p1, p1, v4

    return-wide p1
.end method

.method private concatenateSamples([D[D)[D
    .locals 3

    .line 90
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 92
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private ensureDataConformance([D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 78
    array-length p1, p1

    if-eqz p1, :cond_0

    array-length p1, p2

    if-eqz p1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public mannWhitneyU([D[D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->concatenateSamples([D[D)[D

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 140
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 141
    aget-wide v4, v0, v3

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    array-length v0, p1

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-double v3, v0

    sub-double/2addr v1, v3

    .line 153
    array-length p1, p1

    array-length p2, p2

    mul-int p1, p1, p2

    int-to-double p1, p1

    sub-double/2addr p1, v1

    .line 155
    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public mannWhitneyUTest([D[D)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->ensureDataConformance([D[D)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->mannWhitneyU([D[D)D

    move-result-wide v0

    .line 233
    array-length v2, p1

    array-length v3, p2

    mul-int v2, v2, v3

    int-to-double v2, v2

    sub-double/2addr v2, v0

    .line 235
    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->calculateAsymptoticPValue(DII)D

    move-result-wide p1

    return-wide p1
.end method
