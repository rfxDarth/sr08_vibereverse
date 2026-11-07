.class public Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BracketingNthOrderBrentSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final DEFAULT_MAXIMAL_ORDER:I = 0x5

.field private static final MAXIMAL_AGING:I = 0x2

.field private static final REDUCTION_FACTOR:D = 0.0625


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final maximalOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x5

    .line 71
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 126
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    move-object p1, p0

    const/4 p2, 0x2

    if-lt p7, p2, :cond_0

    .line 130
    iput p7, p1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 131
    sget-object p2, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p2, p1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 128
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    invoke-direct {p3, p4, p2, p5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method public constructor <init>(DDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    const/4 p1, 0x2

    if-lt p5, p1, :cond_0

    .line 108
    iput p5, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 109
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 106
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(DI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    const/4 p1, 0x2

    if-lt p3, p1, :cond_0

    .line 88
    iput p3, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 89
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 86
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method private guessX(D[D[DII)D
    .locals 11

    move/from16 v0, p5

    move v1, v0

    :goto_0
    add-int/lit8 v2, p6, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v3, v0

    :goto_1
    if-le v2, v1, :cond_0

    .line 378
    aget-wide v5, p3, v2

    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p3, v7

    sub-double/2addr v5, v7

    aget-wide v7, p4, v2

    sub-int v9, v2, v4

    aget-wide v9, p4, v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    aput-wide v5, p3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_2
    if-lt v2, v0, :cond_2

    .line 385
    aget-wide v5, p3, v2

    aget-wide v7, p4, v2

    sub-double v7, p1, v7

    mul-double v3, v3, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    return-wide v3
.end method


# virtual methods
.method protected doSolve()D
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 150
    iget v7, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v8, v7, 0x1

    new-array v9, v8, [D

    add-int/lit8 v1, v7, 0x1

    .line 151
    new-array v10, v1, [D

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMin()D

    move-result-wide v1

    const/4 v11, 0x0

    aput-wide v1, v9, v11

    .line 153
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getStartValue()D

    move-result-wide v1

    const/4 v12, 0x1

    aput-wide v1, v9, v12

    .line 154
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMax()D

    move-result-wide v5

    const/4 v13, 0x2

    aput-wide v5, v9, v13

    .line 155
    aget-wide v1, v9, v11

    aget-wide v3, v9, v12

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->verifySequence(DDD)V

    .line 158
    aget-wide v1, v9, v12

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v10, v12

    const-wide/16 v14, 0x0

    .line 159
    invoke-static {v1, v2, v14, v15, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    aget-wide v1, v9, v12

    return-wide v1

    .line 165
    :cond_0
    aget-wide v1, v9, v11

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v10, v11

    .line 166
    invoke-static {v1, v2, v14, v15, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    aget-wide v1, v9, v11

    return-wide v1

    .line 173
    :cond_1
    aget-wide v1, v10, v11

    aget-wide v3, v10, v12

    mul-double v1, v1, v3

    const/4 v3, 0x3

    cmpg-double v4, v1, v14

    if-gez v4, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    :goto_0
    const/4 v4, 0x3

    goto :goto_1

    .line 182
    :cond_2
    aget-wide v1, v9, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v10, v13

    .line 183
    invoke-static {v1, v2, v14, v15, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    aget-wide v1, v9, v13

    return-wide v1

    .line 188
    :cond_3
    aget-wide v1, v10, v12

    aget-wide v4, v10, v13

    mul-double v1, v1, v4

    cmpg-double v4, v1, v14

    if-gez v4, :cond_18

    const/4 v1, 0x2

    const/4 v2, 0x3

    goto :goto_0

    .line 199
    :goto_1
    new-array v3, v8, [D

    add-int/lit8 v5, v1, -0x1

    .line 202
    aget-wide v16, v9, v5

    .line 203
    aget-wide v5, v10, v5

    .line 204
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    .line 206
    aget-wide v20, v9, v1

    .line 207
    aget-wide v22, v10, v1

    .line 208
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    move-wide/from16 v5, v18

    move-wide/from16 v18, v14

    move-wide/from16 v14, v24

    const/4 v12, 0x0

    :goto_2
    const/16 v27, 0x1

    .line 215
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v28

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getRelativeAccuracy()D

    move-result-wide v30

    move-wide/from16 v33, v5

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    move-wide/from16 v36, v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v30, v30, v4

    add-double v28, v28, v30

    sub-double v13, v20, v18

    cmpg-double v4, v13, v28

    if-lez v4, :cond_12

    move-wide/from16 v28, v13

    move-wide/from16 v4, v33

    move-wide/from16 v13, v36

    .line 217
    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v30

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v33

    cmpg-double v6, v30, v33

    if-gez v6, :cond_4

    move-wide/from16 v33, v4

    goto/16 :goto_d

    :cond_4
    const-wide/high16 v30, 0x3fb0000000000000L    # 0.0625

    const/4 v6, 0x2

    if-lt v11, v6, :cond_5

    add-int/lit8 v6, v11, -0x2

    shl-int v6, v27, v6

    add-int/lit8 v6, v6, -0x1

    move v15, v1

    int-to-double v0, v6

    add-int/lit8 v6, v11, -0x1

    move-wide/from16 v33, v0

    int-to-double v0, v6

    mul-double v36, v33, v16

    mul-double v30, v30, v0

    mul-double v30, v30, v22

    :goto_3
    sub-double v36, v36, v30

    add-double v0, v33, v0

    div-double v0, v36, v0

    move-wide/from16 v40, v0

    move v0, v2

    move-wide/from16 v1, v40

    goto :goto_4

    :cond_5
    move v15, v1

    if-lt v12, v6, :cond_6

    add-int/lit8 v0, v12, -0x2

    add-int/lit8 v1, v12, -0x1

    move v6, v0

    int-to-double v0, v1

    shl-int v6, v27, v6

    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v33, v0

    int-to-double v0, v6

    mul-double v36, v0, v22

    mul-double v30, v30, v33

    mul-double v30, v30, v16

    goto :goto_3

    :cond_6
    move v0, v2

    const-wide/16 v1, 0x0

    :goto_4
    move v6, v0

    move-wide/from16 v33, v4

    const/4 v5, 0x0

    :goto_5
    sub-int v4, v6, v5

    .line 261
    invoke-static {v9, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v30, v7

    move-object v4, v10

    const/4 v7, 0x3

    move v10, v0

    move-object/from16 v0, p0

    .line 262
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->guessX(D[D[DII)D

    move-result-wide v31

    cmpl-double v36, v31, v18

    if-lez v36, :cond_8

    cmpg-double v36, v31, v20

    if-ltz v36, :cond_7

    goto :goto_6

    :cond_7
    move-wide/from16 v36, v1

    move-wide/from16 v1, v31

    goto :goto_8

    :cond_8
    :goto_6
    sub-int v7, v15, v5

    move-wide/from16 v36, v1

    sub-int v1, v6, v15

    if-lt v7, v1, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, -0x1

    :goto_7
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 283
    :goto_8
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_b

    sub-int v7, v6, v5

    move-wide/from16 v38, v1

    const/4 v1, 0x1

    if-gt v7, v1, :cond_a

    goto :goto_9

    :cond_a
    move v0, v10

    move/from16 v7, v30

    move-wide/from16 v1, v36

    const/16 v27, 0x1

    move-object v10, v4

    goto :goto_5

    :cond_b
    move-wide/from16 v38, v1

    .line 285
    :goto_9
    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_c

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v28

    add-double v1, v18, v1

    add-int/lit8 v5, v15, -0x1

    move/from16 v28, v15

    goto :goto_a

    :cond_c
    move/from16 v28, v6

    move-wide/from16 v1, v38

    .line 293
    :goto_a
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v6

    move-wide/from16 v36, v1

    move-object/from16 v29, v3

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 294
    invoke-static {v6, v7, v2, v3, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v31

    if-eqz v31, :cond_d

    return-wide v36

    :cond_d
    const/4 v1, 0x2

    if-le v10, v1, :cond_e

    sub-int v2, v28, v5

    if-eq v2, v10, :cond_e

    const/4 v1, 0x0

    .line 305
    invoke-static {v9, v5, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    invoke-static {v4, v5, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v3, v15, v5

    move v1, v3

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    if-ne v10, v8, :cond_f

    add-int/lit8 v2, v10, -0x1

    const/16 v35, 0x2

    add-int/lit8 v3, v30, 0x2

    .line 315
    div-int/lit8 v3, v3, 0x2

    if-lt v15, v3, :cond_10

    const/4 v3, 0x1

    .line 317
    invoke-static {v9, v3, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-static {v4, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v15, -0x1

    goto :goto_b

    :cond_f
    move v2, v10

    :cond_10
    move v1, v15

    :goto_b
    add-int/lit8 v3, v1, 0x1

    sub-int v5, v2, v1

    .line 326
    invoke-static {v9, v1, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    aput-wide v36, v9, v1

    .line 328
    invoke-static {v4, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    aput-wide v6, v4, v1

    const/16 v27, 0x1

    add-int/lit8 v2, v2, 0x1

    mul-double v38, v6, v16

    const-wide/16 v24, 0x0

    cmpg-double v5, v38, v24

    if-gtz v5, :cond_11

    .line 337
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v22, v6

    move-wide v14, v12

    move-wide/from16 v5, v33

    move-wide/from16 v20, v36

    const/4 v12, 0x0

    goto :goto_c

    .line 344
    :cond_11
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    add-int/lit8 v12, v12, 0x1

    move v1, v3

    move-wide/from16 v16, v6

    move-wide v5, v10

    move-wide v14, v13

    move-wide/from16 v18, v36

    const/4 v11, 0x0

    :goto_c
    move-object v10, v4

    move-object/from16 v3, v29

    move/from16 v7, v30

    const/4 v4, 0x3

    const/4 v13, 0x2

    goto/16 :goto_2

    :cond_12
    move-wide/from16 v13, v36

    .line 218
    :goto_d
    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_15

    const/4 v6, 0x2

    if-eq v1, v6, :cond_16

    const/4 v4, 0x3

    if-eq v1, v4, :cond_17

    const/4 v2, 0x4

    if-eq v1, v2, :cond_14

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    const-wide/16 v24, 0x0

    cmpg-double v1, v16, v24

    if-gez v1, :cond_16

    goto :goto_f

    .line 231
    :cond_13
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    :cond_14
    const-wide/16 v24, 0x0

    cmpg-double v1, v16, v24

    if-gtz v1, :cond_17

    goto :goto_e

    :cond_15
    cmpg-double v1, v33, v13

    if-gez v1, :cond_17

    :cond_16
    :goto_e
    return-wide v18

    :cond_17
    :goto_f
    return-wide v20

    :cond_18
    move-object v4, v10

    .line 193
    new-instance v2, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/16 v26, 0x0

    aget-wide v5, v9, v26

    const/16 v35, 0x2

    aget-wide v7, v9, v35

    aget-wide v9, v4, v26

    aget-wide v3, v4, v35

    move-wide/from16 v40, v9

    move-wide v9, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide/from16 v7, v40

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v2
.end method

.method public getMaximalOrder()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 409
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 410
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 398
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 399
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method
