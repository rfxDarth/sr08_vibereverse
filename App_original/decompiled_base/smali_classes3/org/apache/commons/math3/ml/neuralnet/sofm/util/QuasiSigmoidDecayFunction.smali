.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;
.super Ljava/lang/Object;
.source "QuasiSigmoidDecayFunction.java"


# instance fields
.field private final scale:D

.field private final sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;


# direct methods
.method public constructor <init>(DDJ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v5, p1, v3

    if-lez v5, :cond_2

    cmpl-double v5, p3, v3

    if-gez v5, :cond_1

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    long-to-double v11, v1

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    mul-double v1, v1, p3

    div-double v13, v1, p1

    .line 73
    new-instance v8, Lorg/apache/commons/math3/analysis/function/Logistic;

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v9, p1

    invoke-direct/range {v8 .. v20}, Lorg/apache/commons/math3/analysis/function/Logistic;-><init>(DDDDDD)V

    iput-object v8, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    .line 75
    invoke-virtual {v8, v3, v4}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide v1

    div-double v1, p1, v1

    .line 76
    iput-wide v1, v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    return-void

    .line 64
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v3

    .line 61
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 58
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public value(J)D
    .locals 3

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->scale:D

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/QuasiSigmoidDecayFunction;->sigmoid:Lorg/apache/commons/math3/analysis/function/Logistic;

    long-to-double p1, p1

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    return-wide v0
.end method
