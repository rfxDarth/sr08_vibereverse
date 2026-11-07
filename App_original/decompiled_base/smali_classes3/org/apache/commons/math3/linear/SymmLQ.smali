.class public Lorg/apache/commons/math3/linear/SymmLQ;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SymmLQ$State;
    }
.end annotation


# static fields
.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final VECTOR:Ljava/lang/String; = "vector"

.field private static final VECTOR1:Ljava/lang/String; = "vector1"

.field private static final VECTOR2:Ljava/lang/String; = "vector2"


# instance fields
.field private final check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .line 872
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 873
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 874
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0

    .line 890
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 891
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 892
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 921
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 922
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 923
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 995
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 972
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 973
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    .line 974
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1011
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1012
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 1013
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1014
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1077
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1057
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1058
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    .line 1059
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1099
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    .line 1151
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/SymmLQ;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1153
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/SymmLQ;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v7

    .line 1155
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 1156
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1159
    new-instance v8, Lorg/apache/commons/math3/linear/SymmLQ$State;

    iget-wide v4, v1, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    iget-boolean v0, v1, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move/from16 v17, v0

    move-wide v15, v4

    invoke-direct/range {v8 .. v17}, Lorg/apache/commons/math3/linear/SymmLQ$State;-><init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V

    .line 1160
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->init()V

    .line 1161
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1163
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1168
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->bEqualsNullVector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4

    .line 1175
    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->betaEqualsZero()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1176
    :goto_1
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    if-nez v1, :cond_4

    .line 1179
    :cond_3
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1180
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1185
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1186
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->update()V

    .line 1187
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1188
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1193
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1194
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1196
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1201
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1220
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method
