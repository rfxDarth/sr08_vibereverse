.class public Lorg/apache/commons/math3/analysis/function/Sinc;
.super Ljava/lang/Object;
.source "Sinc.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# static fields
.field private static final SHORTCUT:D = 0.006


# instance fields
.field private final normalized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/function/Sinc;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 5

    .line 87
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    .line 88
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    mul-double p1, p1, p1

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    sub-double v0, p1, v0

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x405e000000000000L    # 120.0

    add-double/2addr v0, p1

    :goto_0
    div-double/2addr v0, p1

    return-wide v0

    .line 94
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 112
    iget-boolean v1, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    mul-double v6, v6, v8

    mul-double v8, v6, v6

    .line 115
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    new-array v11, v1, [D

    .line 117
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f789374bc6a7efaL    # 0.006

    const/16 v16, 0x0

    cmpg-double v17, v12, v14

    if-gtz v17, :cond_5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_4

    .line 120
    div-int/lit8 v13, v12, 0x2

    and-int/lit8 v14, v12, 0x1

    if-nez v14, :cond_2

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    int-to-double v13, v13

    add-int/lit8 v15, v12, 0x1

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, v15

    div-double v2, v4, v2

    mul-int/lit8 v15, v12, 0x2

    add-int/lit8 v15, v15, 0x6

    move-wide/from16 v19, v4

    int-to-double v4, v15

    div-double v4, v19, v4

    mul-int/lit8 v15, v12, 0x18

    add-int/lit8 v15, v15, 0x78

    move-object/from16 v21, v11

    int-to-double v10, v15

    div-double v10, v8, v10

    sub-double/2addr v4, v10

    mul-double v4, v4, v8

    sub-double/2addr v2, v4

    mul-double v13, v13, v2

    .line 123
    aput-wide v13, v21, v12

    goto :goto_4

    :cond_2
    move-wide/from16 v19, v4

    move-object/from16 v21, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    neg-double v2, v6

    goto :goto_3

    :cond_3
    move-wide v2, v6

    :goto_3
    add-int/lit8 v4, v12, 0x2

    int-to-double v4, v4

    div-double v4, v19, v4

    mul-int/lit8 v10, v12, 0x6

    add-int/lit8 v10, v10, 0x18

    int-to-double v10, v10

    div-double v10, v19, v10

    mul-int/lit8 v13, v12, 0x78

    add-int/lit16 v13, v13, 0x2d0

    int-to-double v13, v13

    div-double v13, v8, v13

    sub-double/2addr v10, v13

    mul-double v10, v10, v8

    sub-double/2addr v4, v10

    mul-double v2, v2, v4

    .line 127
    aput-wide v2, v21, v12

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v19

    move-object/from16 v11, v21

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v21, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_8

    :cond_5
    move-wide/from16 v19, v4

    move-object/from16 v21, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    div-double v4, v19, v6

    .line 135
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    .line 136
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    mul-double v12, v4, v10

    .line 138
    aput-wide v12, v21, v16

    .line 150
    new-array v12, v1, [D

    .line 151
    aput-wide v19, v12, v16

    move-wide v14, v4

    const/4 v13, 0x1

    :goto_5
    if-ge v13, v1, :cond_8

    and-int/lit8 v19, v13, 0x1

    const-wide/16 v22, 0x0

    if-nez v19, :cond_6

    .line 163
    aput-wide v22, v12, v13

    move/from16 v19, v13

    move-wide/from16 v24, v22

    goto :goto_6

    :cond_6
    add-int/lit8 v19, v13, -0x1

    .line 167
    aget-wide v24, v12, v19

    aput-wide v24, v12, v13

    :goto_6
    move-wide/from16 v26, v2

    move/from16 v2, v19

    :goto_7
    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    sub-int v3, v2, v13

    move/from16 v19, v2

    int-to-double v2, v3

    .line 176
    aget-wide v28, v12, v19

    mul-double v2, v2, v28

    add-int/lit8 v20, v19, -0x1

    aget-wide v28, v12, v20

    sub-double v2, v2, v28

    aput-wide v2, v12, v19

    mul-double v22, v22, v8

    add-double v22, v22, v2

    sub-int v2, v20, v13

    int-to-double v2, v2

    .line 180
    aget-wide v28, v12, v20

    mul-double v2, v2, v28

    add-int/lit8 v28, v19, -0x2

    aget-wide v28, v12, v28

    add-double v2, v2, v28

    aput-wide v2, v12, v20

    mul-double v24, v24, v8

    add-double v24, v24, v2

    add-int/lit8 v2, v19, -0x2

    goto :goto_7

    .line 184
    :cond_7
    aget-wide v2, v12, v16

    move-wide/from16 v19, v2

    neg-int v2, v13

    int-to-double v2, v2

    mul-double v2, v2, v19

    aput-wide v2, v12, v16

    mul-double v22, v22, v8

    add-double v22, v22, v2

    mul-double v14, v14, v4

    mul-double v22, v22, v10

    mul-double v24, v24, v6

    mul-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v22, v22, v14

    .line 188
    aput-wide v22, v21, v13

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v26

    goto :goto_5

    .line 194
    :cond_8
    :goto_8
    iget-boolean v2, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v2, :cond_9

    move-wide/from16 v2, v17

    const/4 v10, 0x1

    :goto_9
    if-ge v10, v1, :cond_9

    .line 197
    aget-wide v4, v21, v10

    mul-double v4, v4, v2

    aput-wide v4, v21, v10

    mul-double v2, v2, v17

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    .line 202
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    return-object v1
.end method
