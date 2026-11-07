.class Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "HighamHall54StepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 55

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v1, -0x3fe2000000000000L    # -7.5

    add-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v1

    const-wide v5, 0x4050e00000000000L    # 67.5

    mul-double v5, v5, p1

    const-wide v7, -0x3fa9380000000000L    # -91.125

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    const-wide v7, 0x403cb00000000000L    # 28.6875

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    mul-double v7, v7, p1

    const-wide/high16 v9, 0x4063000000000000L    # 152.0

    sub-double/2addr v9, v7

    mul-double v9, v9, p1

    const-wide/high16 v7, -0x3fba000000000000L    # -44.0

    add-double/2addr v9, v7

    mul-double v9, v9, p1

    const-wide v7, 0x404f400000000000L    # 62.5

    mul-double v7, v7, p1

    const-wide v11, -0x3fac780000000000L    # -78.125

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    const-wide v11, 0x4037700000000000L    # 23.4375

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    mul-double v11, v11, p1

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double v15, v11, v13

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v19, p1, v17

    sub-double v19, v19, v1

    mul-double v15, v15, v19

    move-wide/from16 p3, v1

    .line 80
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const-wide/high16 v22, 0x4028000000000000L    # 12.0

    const-wide/high16 v24, -0x402c000000000000L    # -0.3125

    const-wide v26, 0x405f400000000000L    # 125.0

    const-wide v28, -0x3fc5f55555555555L    # -26.041666666666668

    const-wide v30, 0x4027700000000000L    # 11.71875

    const-wide/high16 v32, -0x3fc2000000000000L    # -30.0

    const-wide v34, 0x4049555555555555L    # 50.666666666666664

    const-wide/high16 v36, -0x3fca000000000000L    # -22.0

    const-wide v38, 0x4060e00000000000L    # 135.0

    const-wide v40, -0x3fc1a00000000000L    # -30.375

    const-wide v42, 0x402cb00000000000L    # 14.34375

    const-wide v44, 0x4015555555555555L    # 5.333333333333333

    const-wide/high16 v46, -0x3ff2000000000000L    # -3.75

    const/16 v48, 0x0

    if-eqz v1, :cond_0

    const-wide/high16 v49, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v49

    if-gtz v1, :cond_0

    move-wide/from16 v49, v3

    const/4 v1, 0x5

    .line 81
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v2, v2, p1

    const-wide/high16 v17, 0x4004000000000000L    # 2.5

    mul-double v17, v17, p1

    sub-double v44, v44, v17

    mul-double v44, v44, p1

    add-double v44, v44, v46

    mul-double v44, v44, p1

    add-double v44, v44, p3

    mul-double v44, v44, v2

    mul-double v38, v38, p1

    div-double v38, v38, v13

    add-double v38, v38, v40

    mul-double v38, v38, p1

    add-double v38, v38, v42

    mul-double v38, v38, p1

    mul-double v38, v38, v2

    mul-double v32, v32, p1

    add-double v32, v32, v34

    mul-double v32, v32, p1

    add-double v32, v32, v36

    mul-double v32, v32, p1

    mul-double v32, v32, v2

    mul-double v26, v26, p1

    div-double v26, v26, v13

    add-double v26, v26, v28

    mul-double v26, v26, p1

    add-double v26, v26, v30

    mul-double v26, v26, p1

    mul-double v26, v26, v2

    div-double v11, v11, v22

    add-double v11, v11, v24

    mul-double v11, v11, p1

    mul-double v2, v2, v11

    const/4 v4, 0x0

    .line 87
    :goto_0
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 88
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v48

    aget-wide v12, v11, v4

    .line 89
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v21

    aget-wide v17, v11, v4

    .line 90
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v20

    aget-wide v22, v11, v4

    .line 91
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v19

    aget-wide v24, v11, v4

    .line 92
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v1

    aget-wide v28, v11, v4

    .line 93
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    aget-wide v30, v14, v4

    mul-double v34, v44, v12

    add-double v30, v30, v34

    mul-double v34, v38, v17

    add-double v30, v30, v34

    mul-double v34, v32, v22

    add-double v30, v30, v34

    mul-double v34, v26, v24

    add-double v30, v30, v34

    mul-double v34, v2, v28

    add-double v30, v30, v34

    aput-wide v30, v11, v4

    .line 95
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    mul-double v12, v12, v49

    mul-double v17, v17, v5

    add-double v12, v12, v17

    mul-double v22, v22, v9

    add-double v12, v12, v22

    mul-double v24, v24, v7

    add-double v12, v12, v24

    mul-double v28, v28, v15

    add-double v12, v12, v28

    aput-wide v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v49, v3

    const/4 v1, 0x5

    mul-double v2, p1, p1

    move-wide/from16 v51, v2

    const/4 v4, 0x5

    .line 100
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    const-wide/high16 v53, -0x3fec000000000000L    # -5.0

    mul-double v53, v53, p1

    div-double v53, v53, v17

    add-double v53, v53, v44

    mul-double v53, v53, p1

    add-double v53, v53, v46

    mul-double v53, v53, p1

    add-double v53, v53, p3

    mul-double v53, v53, p1

    const-wide v17, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    add-double v53, v53, v17

    mul-double v1, v1, v53

    move-wide/from16 p3, v5

    const/4 v3, 0x5

    .line 101
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v38, v38, p1

    div-double v38, v38, v13

    add-double v38, v38, v40

    mul-double v38, v38, p1

    add-double v38, v38, v42

    mul-double v17, v51, v38

    const-wide/high16 v38, -0x4015000000000000L    # -0.84375

    add-double v17, v17, v38

    mul-double v4, v4, v17

    move-wide/from16 v17, v4

    const/4 v6, 0x5

    .line 102
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v32, v32, p1

    add-double v32, v32, v34

    mul-double v32, v32, p1

    add-double v32, v32, v36

    mul-double v32, v32, v51

    const-wide v34, 0x3ff5555555555555L    # 1.3333333333333333

    add-double v32, v32, v34

    mul-double v3, v3, v32

    move-wide/from16 v32, v7

    const/4 v5, 0x5

    .line 103
    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v26, v26, p1

    div-double v26, v26, v13

    add-double v26, v26, v28

    mul-double v13, p1, v26

    add-double v13, v13, v30

    mul-double v13, v13, v51

    const-wide v26, -0x400b2aaaaaaaaaabL    # -1.3020833333333333

    add-double v13, v13, v26

    mul-double v6, v6, v13

    .line 104
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    div-double v11, v11, v22

    add-double v11, v11, v24

    mul-double v11, v11, v51

    const-wide v22, -0x4045555555555555L    # -0.10416666666666667

    add-double v11, v11, v22

    mul-double v13, v13, v11

    const/4 v8, 0x0

    .line 105
    :goto_1
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v8, v11, :cond_1

    .line 106
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v48

    aget-wide v22, v11, v8

    .line 107
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v21

    aget-wide v24, v11, v8

    .line 108
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v20

    aget-wide v26, v11, v8

    .line 109
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v19

    aget-wide v28, v11, v8

    .line 110
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v11, v11, v5

    aget-wide v30, v11, v8

    .line 111
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->currentState:[D

    aget-wide v34, v12, v8

    mul-double v36, v1, v22

    add-double v34, v34, v36

    mul-double v36, v17, v24

    add-double v34, v34, v36

    mul-double v36, v3, v26

    add-double v34, v34, v36

    mul-double v36, v6, v28

    add-double v34, v34, v36

    mul-double v36, v13, v30

    add-double v34, v34, v36

    aput-wide v34, v11, v8

    .line 113
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    mul-double v22, v22, v49

    mul-double v24, v24, p3

    add-double v22, v22, v24

    mul-double v26, v26, v9

    add-double v22, v22, v26

    mul-double v24, v32, v28

    add-double v22, v22, v24

    mul-double v30, v30, v15

    add-double v22, v22, v30

    aput-wide v22, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 65
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V

    return-object v0
.end method
