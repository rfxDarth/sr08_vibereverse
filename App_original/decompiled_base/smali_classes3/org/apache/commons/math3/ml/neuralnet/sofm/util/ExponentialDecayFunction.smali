.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;
.super Ljava/lang/Object;
.source "ExponentialDecayFunction.java"


# instance fields
.field private final a:D

.field private final oneOverB:D


# direct methods
.method public constructor <init>(DDJ)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_3

    cmpg-double v2, p3, v0

    if-lez v2, :cond_2

    cmpl-double v0, p3, p1

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 71
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    div-double/2addr p3, p1

    .line 72
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    long-to-double p3, p5

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->oneOverB:D

    return-void

    .line 68
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 65
    :cond_1
    new-instance p5, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p5, p3, p1, p2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p5

    .line 62
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 59
    :cond_3
    new-instance p3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p3
.end method


# virtual methods
.method public value(J)D
    .locals 4

    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    neg-long p1, p1

    long-to-double p1, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->oneOverB:D

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    return-wide v0
.end method
