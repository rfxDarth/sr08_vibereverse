.class public Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;
.super Ljava/lang/Object;
.source "WilsonScoreInterval.java"

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
    .locals 18

    move/from16 v0, p1

    .line 35
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, p3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    .line 37
    new-instance v5, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    sub-double v3, v1, v3

    .line 38
    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v3

    const/4 v5, 0x2

    .line 39
    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v6

    move/from16 v8, p2

    int-to-double v8, v8

    int-to-double v10, v0

    div-double/2addr v8, v10

    div-double v12, v1, v10

    mul-double v14, v12, v6

    add-double/2addr v14, v1

    div-double v14, v1, v14

    mul-int/lit8 v0, v0, 0x2

    move-wide/from16 v16, v1

    int-to-double v1, v0

    div-double v1, v16, v1

    mul-double v1, v1, v6

    add-double/2addr v1, v8

    mul-double v12, v12, v8

    sub-double v8, v16, v8

    mul-double v12, v12, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 44
    invoke-static {v10, v11, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    mul-double v10, v10, v8

    div-double v8, v16, v10

    mul-double v8, v8, v6

    add-double/2addr v12, v8

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    sub-double v5, v1, v3

    mul-double v8, v14, v5

    add-double/2addr v1, v3

    mul-double v10, v14, v1

    .line 50
    new-instance v7, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-wide/from16 v12, p3

    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v7
.end method
