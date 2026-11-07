.class Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final featureSize:I

.field private final neighbourIdList:[[J

.field private final neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

.field private final nextId:J


# direct methods
.method constructor <init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    .line 458
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    .line 459
    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 460
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    .line 469
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V

    return-object v0
.end method
