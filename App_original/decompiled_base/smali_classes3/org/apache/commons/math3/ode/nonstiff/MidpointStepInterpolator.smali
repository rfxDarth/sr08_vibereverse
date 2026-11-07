.class Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "MidpointStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 22

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    .line 92
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, p1, v10

    if-gtz v7, :cond_0

    mul-double v3, p1, p3

    mul-double v10, p1, p1

    .line 94
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->h:D

    mul-double v10, v10, v12

    const/4 v7, 0x0

    .line 95
    :goto_0
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v12, v12

    if-ge v7, v12, :cond_1

    .line 96
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v12, v12, v9

    aget-wide v13, v12, v7

    .line 97
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v12, v12, v8

    aget-wide v15, v12, v7

    .line 98
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    const/16 v17, 0x1

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    aget-wide v18, v8, v7

    mul-double v20, v3, v13

    add-double v18, v18, v20

    mul-double v20, v10, v15

    add-double v18, v18, v20

    aput-wide v18, v12, v7

    .line 99
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v13, v13, v5

    mul-double v15, v15, v1

    add-double/2addr v13, v15

    aput-wide v13, v8, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x1

    mul-double v7, p3, p1

    add-double v3, p1, v3

    mul-double v3, v3, p3

    const/4 v10, 0x0

    .line 104
    :goto_1
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 105
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v11, v11, v9

    aget-wide v12, v11, v10

    .line 106
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v11, v11, v17

    aget-wide v14, v11, v10

    .line 107
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->currentState:[D

    aget-wide v18, v9, v10

    mul-double v20, v7, v12

    add-double v18, v18, v20

    mul-double v20, v3, v14

    sub-double v18, v18, v20

    aput-wide v18, v11, v10

    .line 108
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v12, v12, v5

    mul-double v14, v14, v1

    add-double/2addr v12, v14

    aput-wide v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 80
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V

    return-object v0
.end method
