.class final Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;
.super Ljava/lang/Object;
.source "LearningFactorFunctionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;->exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

.field final synthetic val$initValue:D

.field final synthetic val$numCall:J

.field final synthetic val$valueAtNumCall:D


# direct methods
.method constructor <init>(DDJ)V
    .locals 7

    .line 66
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$initValue:D

    iput-wide p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$valueAtNumCall:D

    iput-wide p5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->val$numCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;-><init>(DDJ)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    return-void
.end method


# virtual methods
.method public value(J)D
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;->decay:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->value(J)D

    move-result-wide p1

    return-wide p1
.end method
