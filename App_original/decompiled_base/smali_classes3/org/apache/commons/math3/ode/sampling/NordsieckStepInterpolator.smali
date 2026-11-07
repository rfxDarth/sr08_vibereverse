.class public Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "NordsieckStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = -0x63a3fe2e1c0e0830L


# instance fields
.field private nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private referenceTime:D

.field private scaled:[D

.field private scalingH:D

.field protected stateVariation:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 84
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 85
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 86
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 89
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 92
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    :cond_2
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 17

    move-object/from16 v0, p0

    .line 192
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedTime:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    sub-double/2addr v1, v3

    .line 193
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    div-double v3, v1, v3

    .line 195
    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 196
    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 200
    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v5

    .line 201
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    :goto_0
    const/4 v7, 0x0

    if-ltz v6, :cond_1

    add-int/lit8 v8, v6, 0x2

    .line 203
    aget-object v9, v5, v6

    .line 204
    invoke-static {v3, v4, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    .line 205
    :goto_1
    array-length v12, v9

    if-ge v7, v12, :cond_0

    .line 206
    aget-wide v12, v9, v7

    mul-double v12, v12, v10

    .line 207
    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v15, v14, v7

    add-double/2addr v15, v12

    aput-wide v15, v14, v7

    .line 208
    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v15, v14, v7

    move-wide/from16 p1, v1

    int-to-double v1, v8

    mul-double v1, v1, v12

    add-double/2addr v15, v1

    aput-wide v15, v14, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, p1

    goto :goto_1

    :cond_0
    move-wide/from16 p1, v1

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    move-wide/from16 p1, v1

    .line 212
    :goto_2
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v1, v1

    if-ge v7, v1, :cond_2

    .line 213
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v5, v1, v7

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v8, v2, v7

    mul-double v8, v8, v3

    add-double/2addr v5, v8

    aput-wide v5, v1, v7

    .line 214
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedState:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    aget-wide v5, v2, v7

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v8, v2, v7

    add-double/2addr v5, v8

    aput-wide v5, v1, v7

    .line 215
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v5, v2, v7

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v8, v2, v7

    mul-double v8, v8, v3

    add-double/2addr v5, v8

    div-double v5, v5, p1

    aput-wide v5, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 100
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V

    return-object v0
.end method

.method public getInterpolatedStateVariation()[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    .line 263
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 264
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 266
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v2, v2

    .line 267
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 269
    new-array v5, v2, [D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    .line 271
    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 274
    :cond_1
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 277
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    goto :goto_2

    .line 281
    :cond_3
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 286
    new-array p1, v2, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    .line 287
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    return-void

    .line 289
    :cond_4
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-void
.end method

.method public reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 134
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 135
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 136
    iput-object p6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedTime()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    return-void
.end method

.method public reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 117
    array-length p1, p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-void
.end method

.method public rescale(D)V
    .locals 11

    .line 150
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    div-double v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 151
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 152
    aget-wide v5, v4, v3

    mul-double v5, v5, v0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v3

    move-wide v5, v0

    const/4 v4, 0x0

    .line 157
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_2

    mul-double v5, v5, v0

    .line 159
    aget-object v7, v3, v4

    const/4 v8, 0x0

    .line 160
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 161
    aget-wide v9, v7, v8

    mul-double v9, v9, v5

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    :cond_2
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 230
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 231
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->currentState:[D

    array-length v0, v0

    .line 234
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 235
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_2

    .line 237
    :cond_1
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 239
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v5, v4, v1

    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-nez v0, :cond_3

    .line 244
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void

    .line 246
    :cond_3
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
