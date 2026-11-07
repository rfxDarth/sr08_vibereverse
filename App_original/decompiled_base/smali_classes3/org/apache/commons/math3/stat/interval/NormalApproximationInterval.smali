.class public Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;
.super Ljava/lang/Object;
.source "NormalApproximationInterval.java"

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
    .locals 15

    .line 36
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    move/from16 v0, p2

    int-to-double v0, v0

    move/from16 v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, p3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 39
    new-instance v8, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    sub-double v6, v4, v6

    .line 40
    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v6

    div-double v2, v4, v2

    mul-double v2, v2, v0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    .line 42
    new-instance v8, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v9, v0, v6

    add-double v11, v0, v6

    move-wide/from16 v13, p3

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v8
.end method
