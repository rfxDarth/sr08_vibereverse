.class Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "LutherStepInterpolator.java"


# static fields
.field private static final Q:D

.field private static final serialVersionUID:J = 0x1335180L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    .line 42
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 53

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    mul-double v1, v1, p1

    const-wide v3, -0x3fb8800000000000L    # -47.0

    add-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x4042000000000000L    # 36.0

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide v5, -0x3fda666666666666L    # -10.8

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide/high16 v7, 0x405c000000000000L    # 112.0

    mul-double v7, v7, p1

    const-wide v9, -0x3f96aaaaaaaaaaabL    # -202.66666666666666

    add-double/2addr v9, v7

    mul-double v9, v9, p1

    const-wide v11, 0x405aaaaaaaaaaaabL    # 106.66666666666667

    add-double/2addr v9, v11

    mul-double v9, v9, p1

    const-wide v11, -0x3fd4444444444444L    # -13.866666666666667

    add-double/2addr v9, v11

    mul-double v9, v9, p1

    const-wide v11, -0x3f7e480000000000L    # -567.0

    mul-double v11, v11, p1

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    div-double v15, v11, v13

    const-wide v17, 0x40684ccccccccccdL    # 194.4

    add-double v15, v15, v17

    mul-double v15, v15, p1

    const-wide v17, -0x3fa7b33333333333L    # -97.2

    add-double v15, v15, v17

    mul-double v15, v15, p1

    const-wide v17, 0x4029eb851eb851ecL    # 12.96

    add-double v15, v15, v17

    mul-double v15, v15, p1

    .line 126
    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v19, 0x4075700000000000L    # 343.0

    mul-double v21, v17, v19

    const-wide v23, 0x408a080000000000L    # 833.0

    add-double v21, v21, v23

    const-wide v25, 0x4062c00000000000L    # 150.0

    div-double v21, v21, v25

    const-wide v27, 0x4076500000000000L    # 357.0

    mul-double v29, v17, v27

    const-wide v31, -0x3f7c180000000000L    # -637.0

    sub-double v29, v31, v29

    const-wide/high16 v33, 0x403e000000000000L    # 30.0

    div-double v29, v29, v33

    const-wide v35, 0x4071f00000000000L    # 287.0

    mul-double v37, v17, v35

    const-wide v39, 0x4078800000000000L    # 392.0

    add-double v37, v37, v39

    const-wide/high16 v41, 0x402e000000000000L    # 15.0

    div-double v37, v37, v41

    const-wide v43, 0x4048800000000000L    # 49.0

    mul-double v45, v17, v43

    const-wide v47, -0x3fb7800000000000L    # -49.0

    sub-double v45, v47, v45

    mul-double v45, v45, p1

    div-double v45, v45, v13

    add-double v37, v37, v45

    mul-double v37, v37, p1

    add-double v29, v29, v37

    mul-double v29, v29, p1

    add-double v21, v21, v29

    mul-double v21, v21, p1

    mul-double v29, v17, v19

    sub-double v29, v23, v29

    div-double v29, v29, v25

    mul-double v25, v17, v27

    add-double v25, v25, v31

    div-double v25, v25, v33

    mul-double v33, v17, v35

    sub-double v33, v39, v33

    div-double v33, v33, v41

    mul-double v37, v17, v43

    add-double v37, v37, v47

    mul-double v37, v37, p1

    div-double v37, v37, v13

    add-double v33, v33, v37

    mul-double v33, v33, p1

    add-double v25, v25, v33

    mul-double v25, v25, p1

    add-double v29, v29, v25

    mul-double v29, v29, p1

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    mul-double v25, v25, p1

    const-wide/high16 v33, -0x3ff8000000000000L    # -3.0

    add-double v25, v25, v33

    mul-double v25, v25, p1

    const-wide v33, 0x3fe3333333333333L    # 0.6

    add-double v25, v25, v33

    mul-double v25, v25, p1

    move-wide/from16 v33, v5

    .line 130
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    const-wide v37, 0x4019eb851eb851ecL    # 6.48

    const/16 v41, 0x0

    const-wide v45, 0x4072c00000000000L    # 300.0

    const-wide/high16 v49, 0x4039000000000000L    # 25.0

    if-eqz v5, :cond_0

    const-wide/high16 v51, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, p1, v51

    if-gtz v5, :cond_0

    const-wide v51, -0x3fd8800000000000L    # -11.75

    div-double/2addr v1, v13

    add-double v1, v1, v51

    mul-double v1, v1, p1

    const-wide/high16 v51, 0x4028000000000000L    # 12.0

    add-double v1, v1, v51

    mul-double v1, v1, p1

    const-wide v51, -0x3fea666666666666L    # -5.4

    add-double v1, v1, v51

    mul-double v1, v1, p1

    add-double v1, v1, v33

    const-wide v33, -0x3fb6aaaaaaaaaaabL    # -50.666666666666664

    div-double/2addr v7, v13

    add-double v7, v7, v33

    mul-double v7, v7, p1

    const-wide v13, 0x4041c71c71c71c72L    # 35.55555555555556

    add-double/2addr v7, v13

    mul-double v7, v7, p1

    const-wide v13, -0x3fe4444444444444L    # -6.933333333333334

    add-double/2addr v7, v13

    mul-double v7, v7, p1

    const-wide v13, 0x40484ccccccccccdL    # 48.6

    div-double v11, v11, v49

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    const-wide v13, -0x3fbfcccccccccccdL    # -32.4

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    add-double v11, v11, v37

    mul-double v11, v11, p1

    mul-double v13, v17, v19

    add-double v13, v13, v23

    div-double v13, v13, v45

    mul-double v33, v17, v27

    sub-double v33, v31, v33

    const-wide v37, 0x4056800000000000L    # 90.0

    div-double v33, v33, v37

    mul-double v37, v17, v35

    add-double v37, v37, v39

    const-wide/high16 v51, 0x404e000000000000L    # 60.0

    div-double v37, v37, v51

    mul-double v51, v17, v43

    sub-double v51, v47, v51

    mul-double v51, v51, p1

    div-double v51, v51, v49

    add-double v37, v37, v51

    mul-double v37, v37, p1

    add-double v33, v33, v37

    mul-double v33, v33, p1

    add-double v13, v13, v33

    mul-double v13, v13, p1

    mul-double v19, v19, v17

    sub-double v23, v23, v19

    div-double v23, v23, v45

    mul-double v27, v27, v17

    add-double v27, v27, v31

    const-wide v19, 0x4056800000000000L    # 90.0

    div-double v27, v27, v19

    mul-double v35, v35, v17

    sub-double v39, v39, v35

    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    div-double v39, v39, v19

    mul-double v17, v17, v43

    add-double v17, v17, v47

    mul-double v17, v17, p1

    div-double v17, v17, v49

    add-double v39, v39, v17

    mul-double v39, v39, p1

    add-double v27, v27, v39

    mul-double v27, v27, p1

    add-double v23, v23, v27

    mul-double v23, v23, p1

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    mul-double v17, v17, p1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    add-double v17, v17, v19

    mul-double v17, v17, p1

    const-wide v19, 0x3fd3333333333333L    # 0.3

    add-double v17, v17, v19

    mul-double v17, v17, p1

    const/4 v5, 0x0

    const/16 v19, 0x1

    .line 139
    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 140
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v41

    aget-wide v27, v6, v5

    .line 141
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v19

    aget-wide v31, v6, v5

    .line 142
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x2

    aget-object v6, v6, v20

    aget-wide v33, v6, v5

    .line 143
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x3

    aget-object v6, v6, v20

    aget-wide v35, v6, v5

    .line 144
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x4

    aget-object v6, v6, v20

    aget-wide v37, v6, v5

    .line 145
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x5

    aget-object v6, v6, v20

    aget-wide v39, v6, v5

    .line 146
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x6

    aget-object v6, v6, v20

    aget-wide v42, v6, v5

    .line 147
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-wide/from16 p3, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    aget-wide v44, v1, v5

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->h:D

    mul-double v1, v1, p1

    mul-double v46, p3, v27

    const-wide/16 v48, 0x0

    mul-double v31, v31, v48

    add-double v46, v46, v31

    mul-double v48, v7, v33

    add-double v46, v46, v48

    mul-double v48, v11, v35

    add-double v46, v46, v48

    mul-double v48, v13, v37

    add-double v46, v46, v48

    mul-double v48, v23, v39

    add-double v46, v46, v48

    mul-double v48, v17, v42

    add-double v46, v46, v48

    mul-double v1, v1, v46

    add-double v44, v44, v1

    aput-wide v44, v6, v5

    .line 150
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    mul-double v27, v27, v3

    add-double v27, v27, v31

    mul-double v33, v33, v9

    add-double v27, v27, v33

    mul-double v35, v35, v15

    add-double v27, v27, v35

    mul-double v37, v37, v21

    add-double v27, v27, v37

    mul-double v39, v39, v29

    add-double v27, v27, v39

    mul-double v42, v42, v25

    add-double v27, v27, v42

    aput-wide v27, v1, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v1, p3

    goto/16 :goto_0

    :cond_0
    const/16 v19, 0x1

    const-wide/high16 v1, -0x3fcb000000000000L    # -21.0

    mul-double v1, v1, p1

    div-double/2addr v1, v13

    const-wide v5, 0x401e333333333333L    # 7.55

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, -0x3fee333333333333L    # -4.45

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, 0x3fee666666666666L    # 0.95

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, -0x4056666666666666L    # -0.05

    add-double/2addr v1, v5

    const-wide/high16 v7, -0x3fa4000000000000L    # -112.0

    mul-double v7, v7, p1

    div-double/2addr v7, v13

    const-wide v11, 0x403c444444444444L    # 28.266666666666666

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    const-wide v11, -0x3fe2d82d82d82d83L    # -7.288888888888889

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    const-wide v11, -0x40293e93e93e93e9L    # -0.35555555555555557

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    add-double/2addr v7, v11

    const-wide v11, 0x4081b80000000000L    # 567.0

    mul-double v11, v11, p1

    div-double v11, v11, v49

    const-wide v13, -0x3fc6147ae147ae14L    # -25.92

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    add-double v11, v11, v37

    mul-double v11, v11, p1

    mul-double v11, v11, p1

    const-wide v13, 0x4090140000000000L    # 1029.0

    mul-double v13, v13, v17

    const-wide v23, 0x40a19c0000000000L    # 2254.0

    add-double v13, v13, v23

    const-wide v27, 0x408c200000000000L    # 900.0

    div-double v13, v13, v27

    const-wide v27, 0x408a780000000000L    # 847.0

    mul-double v27, v27, v17

    const-wide v31, -0x3f6a900000000000L    # -1372.0

    sub-double v31, v31, v27

    div-double v31, v31, v45

    mul-double v27, v17, v43

    add-double v27, v27, v43

    mul-double v27, v27, p1

    div-double v27, v27, v49

    add-double v31, v31, v27

    mul-double v31, v31, p1

    add-double v13, v13, v31

    mul-double v13, v13, p1

    const-wide v27, -0x402e93e93e93e93fL    # -0.2722222222222222

    add-double v13, v13, v27

    mul-double v13, v13, p1

    add-double v13, v13, v27

    const-wide v31, 0x4090140000000000L    # 1029.0

    mul-double v31, v31, v17

    sub-double v23, v23, v31

    const-wide v31, 0x408c200000000000L    # 900.0

    div-double v23, v23, v31

    const-wide v31, 0x408a780000000000L    # 847.0

    mul-double v31, v31, v17

    const-wide v33, -0x3f6a900000000000L    # -1372.0

    add-double v31, v31, v33

    div-double v31, v31, v45

    mul-double v17, v17, v43

    sub-double v43, v43, v17

    mul-double v43, v43, p1

    div-double v43, v43, v49

    add-double v31, v31, v43

    mul-double v31, v31, p1

    add-double v23, v23, v31

    mul-double v23, v23, p1

    add-double v23, v23, v27

    mul-double v23, v23, p1

    add-double v23, v23, v27

    const-wide/high16 v17, -0x4018000000000000L    # -0.75

    mul-double v17, v17, p1

    const-wide/high16 v27, 0x3fd0000000000000L    # 0.25

    add-double v17, v17, v27

    mul-double v17, v17, p1

    add-double v17, v17, v5

    mul-double v17, v17, p1

    add-double v17, v17, v5

    const/4 v5, 0x0

    .line 162
    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 163
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v41

    aget-wide v27, v6, v5

    .line 164
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v19

    aget-wide v31, v6, v5

    .line 165
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x2

    aget-object v6, v6, v20

    aget-wide v33, v6, v5

    .line 166
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x3

    aget-object v6, v6, v20

    aget-wide v35, v6, v5

    .line 167
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x4

    aget-object v6, v6, v20

    aget-wide v37, v6, v5

    .line 168
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x5

    aget-object v6, v6, v20

    aget-wide v39, v6, v5

    .line 169
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v20, 0x6

    aget-object v6, v6, v20

    aget-wide v42, v6, v5

    .line 170
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-wide/from16 v44, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->currentState:[D

    aget-wide v46, v1, v5

    mul-double v1, v44, v27

    const-wide/16 v48, 0x0

    mul-double v31, v31, v48

    add-double v1, v1, v31

    mul-double v48, v7, v33

    add-double v1, v1, v48

    mul-double v48, v11, v35

    add-double v1, v1, v48

    mul-double v48, v13, v37

    add-double v1, v1, v48

    mul-double v48, v23, v39

    add-double v1, v1, v48

    mul-double v48, v17, v42

    add-double v1, v1, v48

    mul-double v1, v1, p3

    add-double v46, v46, v1

    aput-wide v46, v6, v5

    .line 173
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    mul-double v27, v27, v3

    add-double v27, v27, v31

    mul-double v33, v33, v9

    add-double v27, v27, v33

    mul-double v35, v35, v15

    add-double v27, v27, v35

    mul-double v37, v37, v21

    add-double v27, v27, v37

    mul-double v39, v39, v29

    add-double v27, v27, v39

    mul-double v42, v42, v25

    add-double v27, v27, v42

    aput-wide v27, v1, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v1, v44

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V

    return-object v0
.end method
