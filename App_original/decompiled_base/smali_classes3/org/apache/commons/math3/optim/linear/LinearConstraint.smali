.class public Lorg/apache/commons/math3/optim/linear/LinearConstraint;
.super Ljava/lang/Object;
.source "LinearConstraint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa9c857997f4136cL


# instance fields
.field private final transient coefficients:Lorg/apache/commons/math3/linear/RealVector;

.field private final relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

.field private final value:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/optim/linear/Relationship;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1, p5}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 155
    iput-object p4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    sub-double/2addr p6, p2

    .line 156
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 97
    iput-object p2, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 98
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    return-void
.end method

.method public constructor <init>([DDLorg/apache/commons/math3/optim/linear/Relationship;[DD)V
    .locals 8

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    array-length v0, p1

    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 125
    aget-wide v4, p1, v3

    aget-wide v6, p5, v3

    sub-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 128
    iput-object p4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    sub-double/2addr p6, p2

    .line 129
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/optim/linear/Relationship;D)V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 227
    const-string v0, "coefficients"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 191
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 192
    check-cast p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 193
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    iget-object v3, p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    iget-wide v5, p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/linear/RealVector;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getCoefficients()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/Relationship;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
