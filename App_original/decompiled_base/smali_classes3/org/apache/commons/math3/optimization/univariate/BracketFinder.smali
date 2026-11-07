.class public Lorg/apache/commons/math3/optimization/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "BracketFinder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private fHi:D

.field private fLo:D

.field private fMid:D

.field private final growLimit:D

.field private hi:D

.field private lo:D

.field private mid:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x32

    .line 82
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-lez v3, :cond_1

    if-lez p3, :cond_0

    .line 101
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->growLimit:D

    .line 102
    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 95
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p3
.end method

.method private eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 1

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 286
    new-instance p2, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public getEvaluations()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFHi()D
    .locals 2

    .line 256
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMid()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 117
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-wide/from16 v3, p3

    .line 119
    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v5

    move-wide/from16 v7, p5

    .line 120
    invoke-direct {v0, v1, v7, v8}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v9

    if-eqz v2, :cond_1

    cmpg-double v11, v5, v9

    if-gez v11, :cond_2

    goto :goto_1

    :cond_1
    cmpl-double v11, v5, v9

    if-lez v11, :cond_2

    :goto_1
    move-wide/from16 v32, v9

    move-wide v9, v5

    move-wide/from16 v5, v32

    goto :goto_2

    :cond_2
    move-wide/from16 v32, v7

    move-wide v7, v3

    move-wide/from16 v3, v32

    :goto_2
    sub-double v11, v3, v7

    const-wide v13, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double v11, v11, v13

    add-double/2addr v11, v3

    .line 135
    invoke-direct {v0, v1, v11, v12}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v15

    :goto_3
    if-eqz v2, :cond_3

    cmpg-double v17, v15, v9

    if-gez v17, :cond_e

    goto :goto_4

    :cond_3
    cmpl-double v17, v15, v9

    if-lez v17, :cond_e

    :goto_4
    sub-double v17, v3, v7

    sub-double v19, v9, v15

    mul-double v19, v19, v17

    sub-double v21, v3, v11

    sub-double v23, v9, v5

    mul-double v23, v23, v21

    sub-double v25, v23, v19

    .line 142
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v27

    const-wide v29, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v31, v27, v29

    if-gez v31, :cond_4

    const-wide v25, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_5

    :cond_4
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v27

    :goto_5
    mul-double v21, v21, v23

    mul-double v17, v17, v19

    sub-double v21, v21, v17

    div-double v21, v21, v25

    move-wide/from16 p2, v13

    sub-double v13, v3, v21

    move/from16 v17, v2

    move-wide/from16 p4, v3

    .line 145
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->growLimit:D

    sub-double v18, v11, p4

    mul-double v2, v2, v18

    add-double v3, p4, v2

    sub-double v20, v13, v11

    sub-double v22, p4, v13

    mul-double v22, v22, v20

    const-wide/16 v24, 0x0

    cmpl-double v2, v22, v24

    if-lez v2, :cond_9

    .line 149
    invoke-direct {v0, v1, v13, v14}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v2

    if-eqz v17, :cond_5

    cmpg-double v4, v2, v15

    if-gez v4, :cond_6

    goto :goto_6

    :cond_5
    cmpl-double v4, v2, v15

    if-lez v4, :cond_6

    :goto_6
    move-wide v5, v9

    move-wide v9, v2

    move-wide v1, v15

    move-wide/from16 v3, p4

    goto/16 :goto_b

    :cond_6
    if-eqz v17, :cond_7

    cmpl-double v4, v2, v9

    if-lez v4, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v4, v2, v9

    if-gez v4, :cond_8

    :goto_7
    move-wide v1, v2

    move-wide v3, v7

    move-wide v11, v13

    move-wide/from16 v13, p4

    goto/16 :goto_b

    :cond_8
    mul-double v18, v18, p2

    add-double v2, v11, v18

    .line 166
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v4

    goto/16 :goto_9

    :cond_9
    sub-double v5, v13, v3

    sub-double v7, v3, v11

    mul-double v7, v7, v5

    cmpl-double v2, v7, v24

    if-ltz v2, :cond_a

    .line 169
    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v5

    move-wide v7, v11

    move-wide v11, v3

    move-wide v3, v7

    move-wide v7, v15

    move-wide v15, v5

    move-wide v5, v9

    move-wide v9, v7

    move-wide/from16 v7, p4

    goto :goto_a

    :cond_a
    sub-double v2, v11, v13

    mul-double v5, v5, v2

    cmpl-double v2, v5, v24

    if-lez v2, :cond_d

    .line 171
    invoke-direct {v0, v1, v13, v14}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v2

    if-eqz v17, :cond_b

    cmpg-double v4, v2, v15

    if-gez v4, :cond_c

    goto :goto_8

    :cond_b
    cmpl-double v4, v2, v15

    if-lez v4, :cond_c

    :goto_8
    mul-double v20, v20, p2

    add-double v4, v13, v20

    .line 180
    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    move-wide v9, v11

    move-wide v11, v4

    move-wide/from16 v32, v15

    move-wide v15, v6

    move-wide v7, v9

    move-wide/from16 v5, v32

    move-wide v9, v2

    move-wide v3, v13

    goto :goto_a

    :cond_c
    move-wide/from16 v7, p4

    move-wide v5, v9

    move-wide v9, v15

    move-wide v15, v2

    move-wide v3, v11

    move-wide v11, v13

    goto :goto_a

    :cond_d
    mul-double v18, v18, p2

    add-double v2, v11, v18

    .line 184
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v4

    :goto_9
    move-wide v7, v15

    move-wide v15, v4

    move-wide v5, v9

    move-wide v9, v7

    move-wide/from16 v7, p4

    move-wide/from16 v32, v11

    move-wide v11, v2

    move-wide/from16 v3, v32

    :goto_a
    move-wide/from16 v13, p2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_e
    move-wide/from16 p4, v3

    move-wide/from16 v13, p4

    move-wide v3, v7

    move-wide v1, v15

    .line 195
    :goto_b
    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    .line 196
    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    .line 197
    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->mid:D

    .line 198
    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fMid:D

    .line 199
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    .line 200
    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    cmpl-double v7, v3, v11

    if-lez v7, :cond_f

    .line 204
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    .line 205
    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    .line 208
    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    .line 209
    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    :cond_f
    return-void
.end method
