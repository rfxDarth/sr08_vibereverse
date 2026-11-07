.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;
.super Ljava/lang/Object;
.source "BracketingNthOrderBrentSolverDFP.java"


# static fields
.field private static final MAXIMAL_AGING:I = 0x2


# instance fields
.field private final absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private final functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final maximalOrder:I

.field private final relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    const/4 v0, 0x2

    if-lt p4, v0, :cond_0

    .line 81
    iput p4, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    .line 82
    iput-object p2, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 83
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 84
    iput-object p3, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-void

    .line 79
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    move v0, p4

    :goto_0
    add-int/lit8 v1, p5, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    sub-int v3, v2, p4

    :goto_1
    if-le v1, v0, :cond_0

    .line 423
    aget-object v4, p2, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aget-object v5, p3, v1

    sub-int v6, v1, v3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aput-object v4, p2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    :goto_2
    if-lt v1, p4, :cond_2

    .line 430
    aget-object v0, p2, v1

    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p5, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    invoke-virtual {v0, p5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-object p5
.end method


# virtual methods
.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaximalOrder()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    return v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 158
    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 184
    invoke-static {v6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 188
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 189
    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x3

    .line 190
    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 193
    iget v11, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    add-int/lit8 v12, v11, 0x1

    new-array v13, v12, [Lorg/apache/commons/math3/dfp/Dfp;

    add-int/lit8 v1, v11, 0x1

    .line 194
    new-array v3, v1, [Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v14, 0x0

    .line 195
    aput-object p3, v13, v14

    .line 196
    aput-object p5, v13, v8

    const/4 v15, 0x2

    .line 197
    aput-object p4, v13, v15

    .line 200
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 201
    aget-object v1, v13, v8

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v3, v8

    .line 202
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    aget-object v1, v13, v8

    return-object v1

    .line 208
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 209
    aget-object v1, v13, v14

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v3, v14

    .line 210
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    aget-object v1, v13, v14

    return-object v1

    .line 217
    :cond_1
    aget-object v1, v3, v14

    aget-object v2, v3, v8

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 227
    aget-object v1, v13, v15

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v3, v15

    .line 228
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    aget-object v1, v13, v15

    return-object v1

    .line 233
    :cond_3
    aget-object v1, v3, v8

    aget-object v2, v3, v15

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 245
    :goto_0
    new-array v4, v12, [Lorg/apache/commons/math3/dfp/Dfp;

    add-int/lit8 v5, v1, -0x1

    .line 248
    aget-object v16, v13, v5

    .line 249
    aget-object v5, v3, v5

    .line 250
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 251
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    .line 253
    aget-object v18, v13, v1

    .line 254
    aget-object v19, v3, v1

    .line 255
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 256
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v21

    move-object/from16 v8, v16

    move-object/from16 v15, v17

    const/4 v6, 0x0

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v21

    move/from16 v21, v12

    const/4 v12, 0x0

    .line 263
    :goto_1
    invoke-virtual {v9, v14}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v22

    move/from16 p4, v1

    if-eqz v22, :cond_4

    move-object v1, v14

    goto :goto_2

    :cond_4
    move-object v1, v9

    .line 264
    :goto_2
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v22

    move/from16 p5, v2

    if-eqz v22, :cond_5

    move-object v2, v7

    goto :goto_3

    :cond_5
    move-object v2, v15

    :goto_3
    move-object/from16 v22, v3

    .line 265
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v23, v9

    iget-object v9, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 266
    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_d

    :cond_6
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-lt v12, v2, :cond_7

    .line 289
    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_4

    :cond_7
    if-lt v6, v2, :cond_8

    .line 292
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object/from16 v1, v19

    :goto_4
    move-object v3, v5

    const/4 v2, 0x0

    move/from16 v5, p5

    :goto_5
    sub-int v9, v5, v2

    .line 305
    invoke-static {v13, v2, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v4

    move v4, v2

    move-object v2, v9

    move/from16 v9, p4

    move-object/from16 p4, v11

    move-object v11, v3

    move-object/from16 v3, v22

    move/from16 v22, v6

    move/from16 v6, p5

    move/from16 p5, v12

    .line 306
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 308
    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-virtual {v12, v10}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v24

    if-nez v24, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v24, v1

    move v1, v4

    goto :goto_8

    :cond_a
    :goto_6
    sub-int v12, v9, v4

    move-object/from16 v24, v1

    sub-int v1, v5, v9

    if-lt v12, v1, :cond_b

    add-int/lit8 v1, v4, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v5, -0x1

    move v1, v4

    :goto_7
    move-object/from16 v12, v17

    .line 327
    :goto_8
    invoke-virtual {v12}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_d

    sub-int v4, v5, v1

    move/from16 v25, v1

    const/4 v1, 0x1

    if-gt v4, v1, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v12, p5

    move-object v4, v2

    move/from16 p5, v6

    move/from16 v6, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v22, v3

    move-object v3, v11

    move-object/from16 v11, p4

    move/from16 p4, v9

    goto :goto_5

    :cond_d
    move/from16 v25, v1

    .line 329
    :goto_9
    invoke-virtual {v12}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 331
    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    add-int/lit8 v1, v9, -0x1

    move v4, v1

    move v1, v9

    goto :goto_a

    :cond_e
    move v1, v5

    move/from16 v4, v25

    .line 337
    :goto_a
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    move-object/from16 v5, p2

    .line 338
    invoke-interface {v5, v12}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v24

    if-eqz v24, :cond_f

    return-object v12

    :cond_f
    move/from16 v24, v1

    const/4 v1, 0x2

    if-le v6, v1, :cond_10

    sub-int v1, v24, v4

    if-eq v1, v6, :cond_10

    move-object/from16 v24, v2

    const/4 v2, 0x0

    .line 350
    invoke-static {v13, v4, v13, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    invoke-static {v3, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v9, v4

    move v2, v1

    move v9, v4

    move/from16 v1, v21

    goto :goto_b

    :cond_10
    move-object/from16 v24, v2

    const/4 v2, 0x0

    move/from16 v1, v21

    if-ne v6, v1, :cond_12

    add-int/lit8 v4, v6, -0x1

    const/4 v6, 0x2

    add-int/lit8 v20, v18, 0x2

    const/16 p3, 0x2

    .line 360
    div-int/lit8 v6, v20, 0x2

    if-lt v9, v6, :cond_11

    const/4 v6, 0x1

    .line 362
    invoke-static {v13, v6, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    invoke-static {v3, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v9, -0x1

    move v9, v2

    :cond_11
    move v2, v4

    goto :goto_b

    :cond_12
    move v2, v6

    :goto_b
    add-int/lit8 v4, v9, 0x1

    sub-int v6, v2, v9

    .line 371
    invoke-static {v13, v9, v13, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    aput-object v12, v13, v9

    .line 373
    invoke-static {v3, v9, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    aput-object v0, v3, v9

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 378
    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 382
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    add-int/lit8 v6, p5, 0x1

    move-object v7, v4

    move-object v10, v12

    move v12, v6

    const/4 v6, 0x0

    goto :goto_c

    .line 389
    :cond_13
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    add-int/lit8 v8, v22, 0x1

    move-object v11, v0

    move v9, v4

    move-object v15, v6

    move v6, v8

    move-object v8, v12

    const/4 v12, 0x0

    move-object/from16 v0, p4

    :goto_c
    move/from16 v21, v1

    move v1, v9

    move-object v5, v11

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    move-object v11, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_14
    :goto_d
    move-object v11, v5

    .line 268
    sget-object v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    move-object/from16 v0, v19

    .line 278
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_f

    .line 281
    :cond_15
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_16
    move-object/from16 v0, v19

    .line 276
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_e

    .line 270
    :cond_17
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    :goto_e
    return-object v8

    :cond_19
    :goto_f
    return-object v10

    .line 238
    :cond_1a
    new-instance v11, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/16 v20, 0x0

    aget-object v0, v13, v20

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    const/4 v2, 0x2

    aget-object v4, v13, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v14

    aget-object v4, v3, v20

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v16

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v18

    move-wide v12, v0

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v11
.end method
