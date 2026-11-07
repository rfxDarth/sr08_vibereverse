.class Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "GillStepInterpolator.java"


# static fields
.field private static final ONE_MINUS_INV_SQRT_2:D

.field private static final ONE_PLUS_INV_SQRT_2:D

.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 60
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    sput-wide v2, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    .line 63
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 36

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v3, p1, v1

    mul-double v5, v3, v3

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    sub-double v7, v3, v7

    mul-double v7, v7, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    sub-double v11, v9, p1

    mul-double v11, v11, v3

    .line 107
    sget-wide v13, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v15, v11, v13

    .line 108
    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v11, v11, v17

    sub-double v19, v3, v9

    mul-double v19, v19, p1

    move-wide/from16 v21, v1

    .line 111
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    const/4 v2, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    if-eqz v1, :cond_0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v28

    if-gtz v1, :cond_0

    .line 112
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->h:D

    mul-double v3, v3, p1

    div-double v3, v3, v26

    mul-double v9, p1, v26

    sub-double/2addr v9, v5

    mul-double v9, v9, v3

    const-wide/high16 v21, 0x4022000000000000L    # 9.0

    mul-double v21, v21, p1

    sub-double v26, v26, v21

    add-double v26, v26, v5

    mul-double v26, v26, v3

    mul-double v13, v13, v9

    mul-double v9, v9, v17

    const-wide/high16 v17, -0x3ff8000000000000L    # -3.0

    mul-double v17, v17, p1

    add-double v17, v17, v5

    mul-double v3, v3, v17

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 119
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v25

    aget-wide v17, v5, v1

    .line 120
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v24

    aget-wide v21, v5, v1

    .line 121
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v23

    aget-wide v28, v5, v1

    .line 122
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v2

    aget-wide v30, v5, v1

    .line 123
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    aget-wide v32, v6, v1

    mul-double v34, v26, v17

    add-double v32, v32, v34

    mul-double v34, v13, v21

    add-double v32, v32, v34

    mul-double v34, v9, v28

    add-double v32, v32, v34

    mul-double v34, v3, v30

    add-double v32, v32, v34

    aput-wide v32, v5, v1

    .line 125
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    mul-double v17, v17, v7

    mul-double v21, v21, v15

    add-double v17, v17, v21

    mul-double v28, v28, v11

    add-double v17, v17, v28

    mul-double v30, v30, v19

    add-double v17, v17, v30

    aput-wide v17, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    div-double v26, p3, v26

    add-double v3, v3, v21

    sub-double/2addr v3, v5

    mul-double v3, v3, v26

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    mul-double v21, v21, p1

    sub-double v21, v9, v21

    add-double v21, v21, v5

    mul-double v21, v21, v26

    mul-double v13, v13, v3

    mul-double v3, v3, v17

    add-double v9, p1, v9

    add-double/2addr v9, v5

    mul-double v26, v26, v9

    const/4 v1, 0x0

    .line 135
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 136
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v25

    aget-wide v9, v5, v1

    .line 137
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v24

    aget-wide v17, v5, v1

    .line 138
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v23

    aget-wide v28, v5, v1

    .line 139
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v2

    aget-wide v30, v5, v1

    .line 140
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->currentState:[D

    aget-wide v32, v6, v1

    mul-double v34, v21, v9

    sub-double v32, v32, v34

    mul-double v34, v13, v17

    sub-double v32, v32, v34

    mul-double v34, v3, v28

    sub-double v32, v32, v34

    mul-double v34, v26, v30

    sub-double v32, v32, v34

    aput-wide v32, v5, v1

    .line 142
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    mul-double v9, v9, v7

    mul-double v17, v17, v15

    add-double v9, v9, v17

    mul-double v28, v28, v11

    add-double v9, v9, v28

    mul-double v30, v30, v19

    add-double v9, v9, v30

    aput-wide v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 94
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V

    return-object v0
.end method
