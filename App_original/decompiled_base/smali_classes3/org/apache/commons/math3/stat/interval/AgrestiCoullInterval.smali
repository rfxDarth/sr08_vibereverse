.class public Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;
.super Ljava/lang/Object;
.source "AgrestiCoullInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 11

    .line 35
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 37
    new-instance v4, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v4}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    sub-double v2, v0, v2

    .line 38
    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v2

    const/4 v4, 0x2

    .line 39
    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v4

    div-double v6, v0, v6

    int-to-double p1, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v8

    add-double/2addr p1, v4

    mul-double p1, p1, v6

    mul-double v6, v6, p1

    sub-double/2addr v0, p1

    mul-double v6, v6, v0

    .line 42
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    .line 45
    new-instance v4, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v5, p1, v2

    add-double v7, p1, v2

    move-wide v9, p3

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v4
.end method
