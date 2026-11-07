.class Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "GraggBulirschStoerStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132de50L


# instance fields
.field private currentDegree:I

.field private errfac:[D

.field private polynomials:[[D

.field private y0Dot:[D

.field private y1:[D

.field private y1Dot:[D

.field private yMidDots:[[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 113
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 114
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 115
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V
    .locals 5

    .line 158
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v0

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 165
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 166
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 167
    move-object v2, v1

    check-cast v2, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 170
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-nez v2, :cond_0

    .line 171
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 p1, -0x1

    .line 172
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    return-void

    .line 174
    :cond_0
    iget v1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 176
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 177
    iget-object v3, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v2

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget p1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    return-void
.end method

.method public constructor <init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p6, p7, p8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 141
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 142
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 143
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 144
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 146
    array-length p1, p5

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    return-void
.end method

.method private resetTables(I)V
    .locals 10

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 193
    move-object p1, v0

    check-cast p1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 194
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    const/4 p1, -0x1

    .line 195
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    return-void

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 198
    new-array v2, v1, [[D

    .line 199
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 200
    array-length v5, v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v3, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 202
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 206
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    :cond_2
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v1, 0x4

    if-gt p1, v1, :cond_3

    .line 213
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    goto :goto_4

    :cond_3
    sub-int/2addr p1, v1

    .line 215
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    const/4 p1, 0x0

    .line 216
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    array-length v1, v0

    if-ge p1, v1, :cond_5

    add-int/lit8 v1, p1, 0x5

    mul-int v2, v1, v1

    int-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    .line 218
    aput-wide v5, v0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-double v2, v0

    int-to-double v5, v1

    div-double/2addr v2, v5

    .line 219
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v5

    const/4 v3, 0x0

    :goto_3
    if-gt v3, p1, :cond_4

    .line 221
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    aget-wide v6, v5, p1

    add-int/lit8 v3, v3, 0x1

    int-to-double v8, v3

    div-double v8, v1, v8

    mul-double v6, v6, v8

    aput-wide v6, v5, p1

    goto :goto_3

    :cond_4
    move p1, v0

    goto :goto_2

    .line 226
    :cond_5
    :goto_4
    iput v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    return-void
.end method


# virtual methods
.method public computeCoefficients(ID)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 245
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-eqz v2, :cond_0

    array-length v2, v2

    add-int/lit8 v3, v1, 0x4

    if-gt v2, v3, :cond_1

    :cond_0
    add-int/lit8 v2, v1, 0x4

    .line 246
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    :cond_1
    add-int/lit8 v2, v1, 0x4

    .line 249
    iput v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 251
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 253
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    aget-wide v5, v4, v3

    mul-double v5, v5, p2

    .line 254
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    aget-wide v7, v4, v3

    mul-double v7, v7, p2

    .line 255
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    aget-wide v9, v4, v3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v11, v4, v3

    sub-double/2addr v9, v11

    sub-double v11, v9, v7

    sub-double v13, v5, v9

    .line 259
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v4, v4, v2

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v16, v15, v3

    aput-wide v16, v4, v3

    .line 260
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v15, 0x1

    aget-object v16, v4, v15

    aput-wide v9, v16, v3

    const/16 v16, 0x0

    const/4 v2, 0x2

    .line 261
    aget-object v17, v4, v2

    aput-wide v11, v17, v3

    const/16 v17, 0x3

    .line 262
    aget-object v4, v4, v17

    aput-wide v13, v4, v3

    if-gez v1, :cond_2

    goto/16 :goto_2

    .line 269
    :cond_2
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v18, v4, v3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    aget-wide v20, v4, v3

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    const-wide/high16 v22, 0x3fc0000000000000L    # 0.125

    add-double v24, v11, v13

    mul-double v24, v24, v22

    add-double v18, v18, v24

    .line 270
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/16 v22, 0x4

    aget-object v23, v4, v22

    const/16 v24, 0x2

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v25, v2, v16

    aget-wide v26, v25, v3

    sub-double v26, v26, v18

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    mul-double v26, v26, v18

    aput-wide v26, v23, v3

    if-lez v1, :cond_3

    const-wide/high16 v25, 0x3fd0000000000000L    # 0.25

    sub-double v27, v11, v13

    mul-double v27, v27, v25

    add-double v9, v9, v27

    const/16 v25, 0x5

    .line 274
    aget-object v25, v4, v25

    aget-object v26, v2, v15

    aget-wide v27, v26, v3

    sub-double v27, v27, v9

    mul-double v27, v27, v18

    aput-wide v27, v25, v3

    if-le v1, v15, :cond_3

    sub-double/2addr v7, v5

    const/4 v5, 0x6

    .line 278
    aget-object v5, v4, v5

    aget-object v6, v2, v24

    aget-wide v9, v6, v3

    sub-double/2addr v9, v7

    aget-wide v6, v23, v3

    add-double/2addr v9, v6

    mul-double v9, v9, v18

    aput-wide v9, v5, v3

    const/4 v5, 0x2

    if-le v1, v5, :cond_3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    sub-double/2addr v13, v11

    mul-double v13, v13, v5

    const/4 v5, 0x7

    .line 282
    aget-object v4, v4, v5

    aget-object v2, v2, v17

    aget-wide v5, v2, v3

    sub-double/2addr v5, v13

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    aget-wide v9, v25, v3

    mul-double v9, v9, v7

    add-double/2addr v5, v9

    mul-double v5, v5, v18

    aput-wide v5, v4, v3

    const/4 v2, 0x4

    :goto_1
    if-gt v2, v1, :cond_3

    int-to-double v4, v2

    mul-double v4, v4, v20

    add-int/lit8 v6, v2, -0x1

    int-to-double v6, v6

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v4

    add-int/lit8 v8, v2, -0x2

    int-to-double v8, v8

    mul-double v6, v6, v8

    add-int/lit8 v8, v2, -0x3

    int-to-double v8, v8

    mul-double v6, v6, v8

    .line 287
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    add-int/lit8 v9, v2, 0x4

    aget-object v9, v8, v9

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v10, v10, v2

    aget-wide v11, v10, v3

    add-int/lit8 v10, v2, 0x2

    aget-object v10, v8, v10

    aget-wide v13, v10, v3

    mul-double v4, v4, v13

    add-double/2addr v11, v4

    aget-object v4, v8, v2

    aget-wide v13, v4, v3

    mul-double v6, v6, v13

    sub-double/2addr v11, v6

    mul-double v11, v11, v18

    aput-wide v11, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 35

    move-object/from16 v0, p0

    .line 319
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v6, p1, v6

    mul-double v8, p1, v4

    mul-double v10, v8, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v12

    mul-double v14, p1, v12

    sub-double v14, v2, v14

    mul-double v8, v8, v14

    .line 326
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v14, v2, v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v16, v16, p1

    sub-double v12, v12, v16

    mul-double v12, v12, p1

    move-wide/from16 p3, v2

    .line 327
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double/2addr v12, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    sub-double v16, v16, v2

    mul-double v16, v16, p1

    add-double v16, v16, p3

    .line 328
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v16, v16, v2

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    if-ge v3, v1, :cond_2

    const/16 v21, 0x0

    .line 332
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v22, v2, v21

    aget-wide v23, v22, v3

    .line 333
    aget-object v20, v2, v20

    aget-wide v25, v20, v3

    const/16 v20, 0x2

    .line 334
    aget-object v20, v2, v20

    aget-wide v27, v20, v3

    move-object/from16 v22, v2

    const/4 v2, 0x3

    .line 335
    aget-object v20, v22, v2

    aget-wide v29, v20, v3

    .line 336
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    mul-double v31, v27, p1

    mul-double v33, v29, v4

    add-double v31, v31, v33

    mul-double v31, v31, v4

    add-double v31, v25, v31

    mul-double v31, v31, p1

    add-double v23, v23, v31

    aput-wide v23, v2, v3

    .line 337
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    mul-double v25, v25, v14

    mul-double v27, v27, v12

    add-double v25, v25, v27

    mul-double v29, v29, v16

    add-double v25, v25, v29

    aput-wide v25, v2, v3

    .line 339
    iget v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    move/from16 v22, v3

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 341
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v2

    aget-wide v23, v3, v22

    add-int/lit8 v2, v2, -0x1

    :goto_1
    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x3

    move/from16 v25, v2

    int-to-double v2, v3

    div-double v2, p3, v2

    mul-double v18, v18, v6

    add-double v18, v18, v23

    mul-double v18, v18, v2

    move-wide/from16 v26, v2

    .line 345
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v25

    aget-wide v28, v2, v22

    mul-double v23, v23, v26

    mul-double v23, v23, v6

    add-double v23, v28, v23

    add-int/lit8 v2, v25, -0x1

    goto :goto_1

    .line 347
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    aget-wide v25, v2, v22

    mul-double v27, v10, v23

    add-double v25, v25, v27

    aput-wide v25, v2, v22

    .line 348
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v25, v2, v22

    mul-double v18, v18, v10

    mul-double v23, v23, v8

    add-double v18, v18, v23

    move-object/from16 v20, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v18, v18, v2

    add-double v25, v25, v18

    aput-wide v25, v20, v22

    :cond_1
    add-int/lit8 v3, v22, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v21, 0x0

    .line 353
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    cmpl-double v4, v2, v18

    if-nez v4, :cond_3

    .line 356
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v2, v2, v20

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 235
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V

    return-object v0
.end method

.method public estimateError([D)D
    .locals 9

    .line 304
    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    .line 305
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 306
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    aget-object v4, v4, v5

    aget-wide v5, v4, v0

    aget-wide v7, p1, v0

    div-double/2addr v5, v7

    mul-double v5, v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    array-length p1, p1

    int-to-double v4, p1

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    sub-int/2addr v2, v3

    aget-wide v2, p1, v2

    mul-double v0, v0, v2

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    .line 388
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v2, v2

    .line 391
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 392
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 393
    iput v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 395
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v4, v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_1

    .line 397
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v6, v6, v4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->setInterpolatedTime(D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v0

    .line 369
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 372
    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 373
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    .line 375
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
