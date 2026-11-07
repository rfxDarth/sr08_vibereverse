.class Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;
.super Ljava/lang/Object;
.source "Neuron.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/Neuron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final features:[D

.field private final identifier:J


# direct methods
.method constructor <init>(J[D)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->identifier:J

    .line 203
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->features:[D

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 212
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->identifier:J

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->features:[D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    return-object v0
.end method
