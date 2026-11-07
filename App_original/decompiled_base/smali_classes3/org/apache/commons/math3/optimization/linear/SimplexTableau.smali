.class Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
.super Ljava/lang/Object;
.source "SimplexTableau.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CUTOFF_THRESHOLD:D = 1.0E-12

.field private static final DEFAULT_ULPS:I = 0xa

.field private static final NEGATIVE_VAR_COLUMN_LABEL:Ljava/lang/String; = "x-"

.field private static final serialVersionUID:J = -0x130202931f9dd83dL


# instance fields
.field private final columnLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

.field private final maxUlps:I

.field private numArtificialVariables:I

.field private final numDecisionVariables:I

.field private final numSlackVariables:I

.field private final restrictToNonNegative:Z

.field private transient tableau:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZD)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "ZD)V"
        }
    .end annotation

    const/16 v7, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .line 123
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "ZDI)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    .line 140
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    .line 141
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    .line 142
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    .line 143
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    .line 144
    iput p7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    .line 145
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p4, p2

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    .line 147
    sget-object p1, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result p1

    sget-object p4, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    .line 149
    sget-object p1, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result p1

    sget-object p4, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    .line 151
    sget-object p1, Lorg/apache/commons/math3/optimization/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->createTableau(Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->initializeColumnLabels()V

    return-void
.end method

.method private copyArray([D[D)V
    .locals 3

    .line 381
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I
    .locals 3

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 290
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 6

    .line 304
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    sub-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private normalize(Lorg/apache/commons/math3/optimization/linear/LinearConstraint;)Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    .locals 7

    .line 265
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 266
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/Relationship;->oppositeRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v5

    mul-double v5, v5, v2

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optimization/linear/Relationship;D)V

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optimization/linear/Relationship;D)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 634
    const-string v0, "tableau"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 622
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected createTableau(Z)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 16

    move-object/from16 v0, p0

    .line 186
    iget v1, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    iget v2, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 188
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v4

    add-int/2addr v3, v4

    .line 189
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 192
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    const/4 v3, 0x2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    .line 193
    invoke-virtual {v4, v7, v7, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 195
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_2

    move-wide v10, v8

    goto :goto_1

    :cond_2
    move-wide v10, v5

    .line 196
    :goto_1
    invoke-virtual {v4, v2, v2, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 197
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    if-eqz p1, :cond_3

    invoke-virtual {v10, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    .line 199
    :cond_3
    invoke-virtual {v10}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v11

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v12

    aget-object v12, v12, v2

    invoke-direct {v0, v11, v12}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->copyArray([D[D)V

    .line 200
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getConstantTerm()D

    move-result-wide v11

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    mul-double v11, v11, v5

    :goto_2
    invoke-virtual {v4, v2, v1, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 203
    iget-boolean v11, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v11, :cond_5

    .line 204
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v10}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v12

    invoke-virtual {v4, v2, v11, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_5
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 211
    :goto_3
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_b

    .line 212
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 213
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v13

    add-int/2addr v13, v2

    .line 216
    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v14

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v15

    aget-object v15, v15, v13

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->copyArray([D[D)V

    .line 219
    iget-boolean v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v14, :cond_6

    .line 220
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v14

    sub-int/2addr v14, v3

    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v5

    invoke-virtual {v4, v13, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 225
    :cond_6
    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v5

    invoke-virtual {v4, v13, v1, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 228
    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v5, v6, :cond_7

    .line 229
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v5

    add-int/lit8 v6, v10, 0x1

    add-int/2addr v5, v10

    invoke-virtual {v4, v13, v5, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v10, v6

    goto :goto_4

    .line 230
    :cond_7
    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v5, v6, :cond_8

    .line 231
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v5

    add-int/lit8 v6, v10, 0x1

    add-int/2addr v5, v10

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v13, v5, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v10, v6

    goto :goto_5

    :cond_8
    :goto_4
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 235
    :goto_5
    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-eq v5, v6, :cond_9

    invoke-virtual {v12}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v5, v6, :cond_a

    .line 237
    :cond_9
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual {v4, v7, v5, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 238
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v5

    add-int/lit8 v6, v11, 0x1

    add-int/2addr v5, v11

    invoke-virtual {v4, v13, v5, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 239
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move v11, v6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move-wide v5, v14

    goto/16 :goto_3

    :cond_b
    return-object v4
.end method

.method protected divideRow(ID)V
    .locals 4

    const/4 v0, 0x0

    .line 445
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    div-double/2addr v2, p2

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dropPhase1Objective()V
    .locals 11

    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 342
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 343
    iget-wide v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-lez v4, :cond_1

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 349
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v4

    add-int/2addr v4, v3

    .line 351
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 352
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 356
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v1

    aput v3, v5, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x1

    .line 357
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 359
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 360
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v7, v4, -0x1

    .line 361
    aget-object v7, v3, v7

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    aput-wide v9, v7, v6

    move v6, v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 367
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 368
    array-length v4, v0

    sub-int/2addr v4, v1

    :goto_4
    if-ltz v4, :cond_8

    .line 369
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 372
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 373
    iput v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 586
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 587
    check-cast p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    .line 588
    iget-boolean v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    iget-boolean v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    iget v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    iget v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    iget v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    iget-wide v5, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    iget v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    iget-object v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p1, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method protected final getArtificialVariableOffset()I
    .locals 2

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getBasicRow(I)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 317
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 318
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 319
    iget v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    .line 321
    iget v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected final getData()[[D
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method protected final getEntry(II)D
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide p1

    return-wide p1
.end method

.method protected final getHeight()I
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    return v0
.end method

.method protected final getNumArtificialVariables()I
    .locals 1

    .line 568
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    return v0
.end method

.method protected final getNumDecisionVariables()I
    .locals 1

    .line 543
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    return v0
.end method

.method protected final getNumObjectiveFunctions()I
    .locals 1

    .line 279
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final getNumSlackVariables()I
    .locals 1

    .line 560
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    return v0
.end method

.method protected final getOriginalNumDecisionVariables()I
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method protected final getRhsOffset()I
    .locals 1

    .line 530
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final getSlackVariableOffset()I
    .locals 2

    .line 514
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 12

    .line 403
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "x-"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v3

    .line 407
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v5

    new-array v6, v5, [D

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_8

    .line 410
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_2

    .line 412
    aput-wide v1, v6, v7

    goto :goto_6

    .line 415
    :cond_2
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 416
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 420
    aput-wide v1, v6, v7

    goto :goto_6

    .line 421
    :cond_3
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    iget-boolean v8, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v8, :cond_4

    move-wide v8, v1

    goto :goto_3

    :cond_4
    move-wide v8, v3

    :goto_3
    sub-double v8, v1, v8

    aput-wide v8, v6, v7

    goto :goto_6

    .line 426
    :cond_5
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_6

    move-wide v8, v1

    goto :goto_4

    .line 427
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v8

    :goto_4
    iget-boolean v10, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v10, :cond_7

    move-wide v10, v1

    goto :goto_5

    :cond_7
    move-wide v10, v3

    :goto_5
    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 432
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getValue([D)D

    move-result-wide v1

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    return-object v0
.end method

.method protected final getWidth()I
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 603
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected initializeColumnLabels()V
    .locals 5

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "Z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v2, "x-"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    .line 169
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumSlackVariables()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 170
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 173
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v1, "RHS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method isOptimal()Z
    .locals 9

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 390
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 391
    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 254
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->normalize(Lorg/apache/commons/math3/optimization/linear/LinearConstraint;)Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final setEntry(IID)V
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    return-void
.end method

.method protected subtractRow(IID)V
    .locals 8

    const/4 v0, 0x0

    .line 462
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 463
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, p2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double v3, v3, p3

    sub-double/2addr v1, v3

    .line 465
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    const-wide/16 v1, 0x0

    .line 468
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, p1, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
