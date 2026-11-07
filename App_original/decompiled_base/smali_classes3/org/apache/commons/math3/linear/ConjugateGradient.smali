.class public Lorg/apache/commons/math3/linear/ConjugateGradient;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "ConjugateGradient.java"


# static fields
.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 109
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 110
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 127
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 128
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    return v0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 155
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/ConjugateGradient;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 156
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ConjugateGradient;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v10

    .line 158
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 159
    iget-wide v2, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    mul-double v11, v2, v4

    .line 160
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 163
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 168
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 169
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v13

    .line 170
    invoke-virtual {v8, v13}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v19

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    move-object/from16 v14, p3

    .line 172
    invoke-virtual/range {v14 .. v19}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    .line 173
    invoke-static {v14}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    .line 174
    invoke-virtual {v14}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v6

    if-nez v9, :cond_0

    move-object v15, v14

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v15, v0

    .line 182
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 184
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    cmpg-double v1, v6, v11

    if-gtz v1, :cond_1

    .line 186
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4

    :cond_1
    const-wide/16 v26, 0x0

    move-wide/from16 v16, v26

    .line 191
    :goto_1
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 192
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 194
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    if-eqz v9, :cond_2

    .line 196
    invoke-virtual {v9, v14}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    .line 198
    :cond_2
    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v28

    .line 199
    iget-boolean v0, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    const-string v2, "vector"

    const-string v6, "operator"

    if-eqz v0, :cond_4

    cmpg-double v0, v28, v26

    if-lez v0, :cond_3

    goto :goto_2

    .line 201
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 202
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v3

    .line 203
    invoke-virtual {v3, v6, v9}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v3, v2, v14}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    throw v0

    .line 207
    :cond_4
    :goto_2
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    const/4 v0, 0x0

    .line 208
    invoke-virtual {v13, v0, v15}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move-object/from16 v20, v14

    move-object/from16 v19, v15

    goto :goto_3

    :cond_5
    div-double v16, v28, v16

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    move-wide/from16 v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 210
    invoke-virtual/range {v13 .. v18}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v19, v18

    .line 212
    :goto_3
    invoke-virtual {v8, v13}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 213
    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v14

    .line 214
    iget-boolean v7, v1, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    if-eqz v7, :cond_7

    cmpg-double v7, v14, v26

    if-lez v7, :cond_6

    goto :goto_4

    .line 216
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 217
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v6, v8}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v3, v2, v13}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    throw v0

    :cond_7
    :goto_4
    div-double v16, v28, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v13

    move-object/from16 v13, p4

    .line 223
    invoke-virtual/range {v13 .. v18}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-wide/from16 v6, v16

    move-object/from16 v13, v18

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    neg-double v6, v6

    move-object/from16 v25, v0

    move-wide/from16 v23, v6

    .line 224
    invoke-virtual/range {v20 .. v25}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 226
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v6

    .line 227
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 229
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    cmpg-double v1, v6, v11

    if-gtz v1, :cond_8

    .line 231
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4

    :cond_8
    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-wide/from16 v16, v28

    goto/16 :goto_1
.end method
