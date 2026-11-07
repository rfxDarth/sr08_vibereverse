.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private beta:[D

.field private final costRelativeTolerance:D

.field private diagR:[D

.field private final initialStepBoundFactor:D

.field private jacNorm:[D

.field private lmDir:[D

.field private lmPar:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private permutation:[I

.field private final qrRankingThreshold:D

.field private rank:I

.field private solvedCols:I

.field private weightedJacobian:[[D

.field private weightedResidual:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 121
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v2, v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 169
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 248
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 282
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 283
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 284
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 285
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 286
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 220
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 221
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 222
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 223
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 224
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 188
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 957
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 737
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 738
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 739
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 740
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 742
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v8, v7, v4

    aput-wide v8, v6, v3

    .line 743
    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 747
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_7

    .line 751
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    .line 752
    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 754
    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 756
    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    .line 762
    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_6

    .line 763
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 767
    aget-wide v10, v1, v4

    cmpl-double v12, v10, v5

    if-eqz v12, :cond_4

    .line 771
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v9

    .line 772
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, v1, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v13, v15

    if-gez v10, :cond_3

    .line 773
    aget-wide v13, v1, v4

    div-double v13, v11, v13

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 774
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v17, v17, v15

    mul-double v13, v13, v17

    goto :goto_4

    .line 777
    :cond_3
    aget-wide v13, v1, v4

    div-double/2addr v13, v11

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 778
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v15, v17, v15

    mul-double v17, v15, v13

    move-wide v13, v15

    :goto_4
    move v15, v3

    move-wide/from16 v2, v17

    move-wide/from16 v16, v5

    .line 784
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v4

    mul-double v11, v11, v13

    aget-wide v18, v1, v4

    mul-double v18, v18, v2

    add-double v11, v11, v18

    aput-wide v11, v5, v9

    .line 785
    aget-wide v5, p4, v4

    mul-double v11, v13, v5

    mul-double v18, v2, v7

    add-double v11, v11, v18

    move-wide/from16 v18, v11

    neg-double v10, v2

    mul-double v5, v5, v10

    mul-double v7, v7, v13

    add-double/2addr v7, v5

    .line 787
    aput-wide v18, p4, v4

    add-int/lit8 v5, v4, 0x1

    .line 790
    :goto_5
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v6, :cond_5

    .line 791
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v5

    aget-wide v18, v6, v9

    mul-double v20, v13, v18

    .line 792
    aget-wide v22, v1, v5

    mul-double v24, v2, v22

    add-double v20, v20, v24

    mul-double v18, v18, v10

    mul-double v22, v22, v13

    add-double v18, v18, v22

    .line 793
    aput-wide v18, v1, v5

    .line 794
    aput-wide v20, v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    move v15, v3

    move-wide/from16 v16, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v3, v15

    move-wide/from16 v5, v16

    goto/16 :goto_3

    :cond_6
    move v15, v3

    .line 801
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v15

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v15

    aget-wide v4, v2, v3

    aput-wide v4, v1, v15

    .line 802
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v5, v4, v15

    aput-wide v5, v2, v3

    add-int/lit8 v3, v15, 0x1

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v16, v5

    const/4 v2, 0x0

    .line 808
    :goto_6
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_a

    .line 809
    aget-wide v5, v1, v2

    cmpl-double v7, v5, v16

    if-nez v7, :cond_8

    if-ne v4, v3, :cond_8

    move v4, v2

    :cond_8
    if-ge v4, v3, :cond_9

    .line 813
    aput-wide v16, p4, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    if-lez v4, :cond_c

    add-int/lit8 v2, v4, -0x1

    :goto_7
    if-ltz v2, :cond_c

    .line 818
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    move-wide/from16 v6, v16

    :goto_8
    if-ge v5, v4, :cond_b

    .line 821
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v5

    aget-wide v9, v8, v3

    aget-wide v11, p4, v5

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 823
    :cond_b
    aget-wide v8, p4, v2

    sub-double/2addr v8, v6

    aget-wide v5, v1, v2

    div-double/2addr v8, v5

    aput-wide v8, p4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 828
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_d

    .line 829
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    aget-wide v4, p4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 565
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    const/4 v9, 0x0

    .line 569
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 570
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 573
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 575
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 576
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 577
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_2

    .line 579
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v21, v11, v9

    mul-double v21, v21, v13

    sub-double v17, v17, v21

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 581
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 587
    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 588
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 589
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v13, v10

    mul-double v11, v11, v14

    .line 590
    aput-wide v11, v4, v10

    mul-double v11, v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 593
    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    .line 596
    iput-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 605
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 606
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 607
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v11

    .line 608
    aget-wide v21, v4, v12

    aget-wide v23, p4, v12

    div-double v23, v23, v7

    mul-double v21, v21, v23

    aput-wide v21, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v7

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    .line 611
    :goto_6
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v7, :cond_8

    .line 612
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v15

    const/4 v8, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v8, v15, :cond_7

    move/from16 v25, v7

    .line 615
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v8

    aget-wide v26, v7, v25

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v8

    aget-wide v28, v4, v7

    mul-double v26, v26, v28

    add-double v23, v23, v26

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v25

    goto :goto_7

    :cond_7
    move/from16 v25, v7

    .line 617
    aget-wide v7, v4, v25

    sub-double v7, v7, v23

    move-wide/from16 v23, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v26, v7, v25

    div-double v7, v23, v26

    .line 618
    aput-wide v7, v4, v25

    mul-double v7, v7, v7

    add-double/2addr v11, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_8
    mul-double v7, v2, v11

    div-double v7, v9, v7

    goto :goto_8

    :cond_9
    move-wide/from16 v21, v7

    const-wide/16 v7, 0x0

    :goto_8
    move-wide/from16 v23, v9

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    .line 626
    :goto_9
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v9, :cond_b

    .line 627
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v15

    const/4 v10, 0x0

    const-wide/16 v25, 0x0

    :goto_a
    if-gt v10, v15, :cond_a

    move/from16 v27, v9

    .line 630
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v10

    aget-wide v28, v9, v27

    aget-wide v30, v1, v10

    mul-double v28, v28, v30

    add-double v25, v25, v28

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v27

    goto :goto_a

    :cond_a
    move/from16 v27, v9

    .line 632
    aget-wide v9, p4, v27

    div-double v25, v25, v9

    mul-double v25, v25, v25

    add-double v11, v11, v25

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 635
    :cond_b
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v11, v9, v2

    const-wide/16 v19, 0x0

    cmpl-double v15, v11, v19

    if-nez v15, :cond_c

    .line 638
    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-wide/from16 v25, v9

    const-wide v9, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    div-double/2addr v11, v9

    goto :goto_b

    :cond_c
    move-wide/from16 v25, v9

    .line 643
    :goto_b
    iget-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v15, v9, v19

    if-nez v15, :cond_d

    div-double v9, v25, v21

    .line 645
    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v9, 0xa

    :goto_c
    if-ltz v9, :cond_18

    .line 651
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v10, v2, v19

    if-nez v10, :cond_e

    .line 652
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    move v15, v9

    mul-double v9, v11, v17

    invoke-static {v2, v3, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    :cond_e
    move v15, v9

    .line 654
    :goto_d
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v9, 0x0

    .line 655
    :goto_e
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_f

    .line 656
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 657
    aget-wide v17, p4, v10

    mul-double v17, v17, v2

    aput-wide v17, v4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 659
    :cond_f
    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 662
    :goto_f
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_10

    .line 663
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 664
    aget-wide v17, p4, v10

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v21, v1, v10

    mul-double v17, v17, v21

    .line 665
    aput-wide v17, v6, v10

    mul-double v17, v17, v17

    add-double v2, v2, v17

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 668
    :cond_10
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    sub-double v9, v1, p2

    .line 674
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpg-double v3, v17, v13

    if-lez v3, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v3, v7, v19

    if-nez v3, :cond_11

    cmpg-double v3, v9, v23

    if-gtz v3, :cond_11

    cmpg-double v3, v23, v19

    if-gez v3, :cond_11

    goto/16 :goto_15

    :cond_11
    move-wide/from16 v17, v1

    const/4 v3, 0x0

    .line 680
    :goto_10
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_12

    .line 681
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    .line 682
    aget-wide v21, v6, v1

    aget-wide v23, p4, v1

    mul-double v21, v21, v23

    div-double v21, v21, v17

    aput-wide v21, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    .line 684
    :goto_11
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_14

    .line 685
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 686
    aget-wide v17, v4, v2

    aget-wide v21, v5, v1

    div-double v17, v17, v21

    aput-wide v17, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    move/from16 v21, v3

    .line 688
    :goto_12
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_13

    .line 689
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    aget-wide v22, v4, v1

    move/from16 v24, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v3

    aget-wide v25, v1, v2

    mul-double v25, v25, v17

    sub-double v22, v22, v25

    aput-wide v22, v4, v24

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_13
    move/from16 v1, v21

    goto :goto_11

    :cond_14
    const/4 v3, 0x0

    const-wide/16 v17, 0x0

    .line 693
    :goto_13
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_15

    .line 694
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    aget-wide v1, v4, v1

    mul-double v1, v1, v1

    add-double v17, v17, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_15
    mul-double v1, p2, v17

    div-double v1, v9, v1

    const-wide/16 v19, 0x0

    cmpl-double v3, v9, v19

    if-lez v3, :cond_16

    move-wide/from16 v17, v1

    .line 701
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v7, v1

    goto :goto_14

    :cond_16
    move-wide/from16 v17, v1

    cmpg-double v1, v9, v19

    if-gez v1, :cond_17

    .line 703
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v11, v1

    .line 707
    :cond_17
    :goto_14
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-double v1, v1, v17

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v1, v15, -0x1

    move-wide/from16 v2, p2

    move-wide/from16 v23, v9

    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_c

    :cond_18
    :goto_15
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 936
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 937
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 940
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 943
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 945
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double v4, v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 947
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v3

    mul-double v10, v10, v4

    sub-double/2addr v7, v10

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    .line 860
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 862
    array-length v2, v1

    const/4 v3, 0x0

    .line 863
    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 867
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 870
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double v9, v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 873
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_b

    const/4 v7, -0x1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v10, v4

    :goto_3
    if-ge v10, v1, :cond_5

    move v11, v4

    move-wide v12, v5

    :goto_4
    if-ge v11, v2, :cond_2

    .line 885
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    aget-wide v15, v14, v15

    mul-double v15, v15, v15

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 888
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_4

    cmpl-double v11, v12, v8

    if-lez v11, :cond_3

    move v7, v10

    move-wide v8, v12

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 889
    :cond_4
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 897
    :cond_5
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_6

    .line 898
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 901
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v7

    .line 902
    aget v12, v10, v4

    aput v12, v10, v7

    .line 903
    aput v11, v10, v4

    .line 906
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v11

    cmpl-double v7, v12, v5

    .line 907
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    if-lez v7, :cond_7

    neg-double v14, v14

    :cond_7
    mul-double v12, v12, v14

    sub-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v8

    .line 909
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v12, v7, v11

    .line 912
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v14, v7, v11

    .line 913
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v8, v7, v11

    sub-double/2addr v8, v14

    aput-wide v8, v7, v11

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v4

    :goto_5
    if-lez v7, :cond_a

    move v8, v4

    move-wide v9, v5

    :goto_6
    if-ge v8, v2, :cond_8

    .line 919
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v8

    aget-wide v15, v14, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v17, v4, v7

    aget v3, v3, v17

    aget-wide v17, v14, v3

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    mul-double v9, v9, v12

    move v3, v4

    :goto_7
    if-ge v3, v2, :cond_9

    .line 923
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v3

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v15, v4, v7

    aget v14, v14, v15

    aget-wide v15, v8, v14

    aget-wide v17, v8, v11

    mul-double v17, v17, v9

    sub-double v15, v15, v17

    aput-wide v15, v8, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v7, -0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 927
    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 61

    move-object/from16 v0, p0

    .line 292
    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->checkParameters()V

    .line 294
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v1

    array-length v8, v1

    .line 295
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v9

    .line 296
    array-length v10, v9

    .line 299
    invoke-static {v8, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 300
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    .line 301
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 302
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    .line 303
    new-array v1, v10, [I

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    .line 304
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 309
    new-array v4, v10, [D

    .line 310
    new-array v11, v10, [D

    .line 311
    new-array v1, v8, [D

    .line 312
    new-array v2, v8, [D

    move-object v2, v1

    .line 313
    new-array v1, v8, [D

    .line 314
    new-array v5, v10, [D

    .line 315
    new-array v6, v10, [D

    .line 316
    new-array v7, v10, [D

    .line 318
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 321
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v3

    .line 322
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v13

    .line 323
    new-instance v14, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v14, v9, v3}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 324
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v15

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    const-wide/16 v13, 0x0

    .line 327
    iput-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v19, v13

    .line 329
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v13

    move-object/from16 v14, v18

    move-wide/from16 v22, v19

    move-wide/from16 v24, v22

    const/16 v21, 0x1

    move-object/from16 v18, v3

    move-object/from16 v60, v17

    move-object/from16 v17, v2

    move-wide v2, v15

    move-object/from16 v15, v60

    .line 331
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->incrementIterationCount()V

    move-object/from16 v26, v4

    .line 336
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 338
    invoke-interface {v12, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    const/16 v27, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_0

    move/from16 v28, v4

    .line 340
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v29, v4, v28

    aput-wide v29, v1, v28

    add-int/lit8 v4, v28, 0x1

    goto :goto_1

    .line 344
    :cond_0
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qTy([D)V

    move-object/from16 v28, v1

    const/4 v4, 0x0

    .line 348
    :goto_2
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v1, :cond_1

    .line 349
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v4

    move/from16 v29, v1

    .line 350
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v4

    move-object/from16 v30, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v31, v1, v29

    aput-wide v31, v30, v29

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    if-eqz v21, :cond_5

    move-wide/from16 v22, v19

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_3

    .line 358
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v24, v4, v1

    cmpl-double v4, v24, v19

    if-nez v4, :cond_2

    move-wide/from16 v24, v29

    .line 362
    :cond_2
    aget-wide v31, v9, v1

    mul-double v31, v31, v24

    mul-double v31, v31, v31

    add-double v22, v22, v31

    .line 364
    aput-wide v24, v26, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 366
    :cond_3
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    cmpl-double v1, v24, v19

    if-nez v1, :cond_4

    move-object v1, v5

    .line 369
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    move-object v1, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v4, v4, v24

    :goto_4
    move-wide/from16 v22, v4

    goto :goto_5

    :cond_5
    move-object v1, v5

    :goto_5
    cmpl-double v4, v2, v19

    move-object/from16 v32, v1

    move-object/from16 v31, v6

    if-eqz v4, :cond_9

    move-wide/from16 v5, v19

    const/4 v4, 0x0

    .line 375
    :goto_6
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v1, :cond_8

    .line 376
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v4

    move/from16 v33, v1

    .line 377
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v34, v1, v33

    cmpl-double v1, v34, v19

    if-eqz v1, :cond_7

    move-wide/from16 v36, v19

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v4, :cond_6

    move/from16 v38, v1

    .line 381
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v38

    aget-wide v39, v1, v33

    aget-wide v41, v28, v38

    mul-double v39, v39, v41

    add-double v36, v36, v39

    add-int/lit8 v1, v38, 0x1

    goto :goto_7

    .line 383
    :cond_6
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    mul-double v34, v34, v2

    move-object v1, v7

    move/from16 v33, v8

    div-double v7, v36, v34

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    goto :goto_8

    :cond_7
    move-object v1, v7

    move/from16 v33, v8

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object v7, v1

    move/from16 v8, v33

    goto :goto_6

    :cond_8
    move-wide/from16 v34, v5

    goto :goto_9

    :cond_9
    move-wide/from16 v34, v19

    :goto_9
    move-object v1, v7

    move/from16 v33, v8

    .line 387
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v6, v34, v4

    if-gtz v6, :cond_a

    .line 389
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v14

    :cond_a
    const/4 v4, 0x0

    :goto_a
    if-ge v4, v10, :cond_b

    .line 395
    aget-wide v5, v26, v4

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-wide/from16 v36, v2

    move-object v3, v1

    aget-wide v1, v7, v4

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v26, v4

    add-int/lit8 v4, v4, 0x1

    move-object v1, v3

    move-wide/from16 v2, v36

    goto :goto_a

    :cond_b
    move-wide/from16 v36, v2

    move-object v3, v1

    move-object v1, v14

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    move-wide/from16 v4, v19

    :goto_b
    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v6, v4, v17

    if-gez v6, :cond_25

    const/4 v1, 0x0

    .line 402
    :goto_c
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v4, :cond_c

    .line 403
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v1

    .line 404
    aget-wide v5, v9, v4

    aput-wide v5, v11, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 407
    :cond_c
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 408
    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object v7, v3

    move-wide/from16 v2, v22

    move-object/from16 v4, v26

    move-object/from16 v1, v28

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    .line 415
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide v3, v2

    move-wide/from16 v5, v19

    const/4 v1, 0x0

    .line 419
    :goto_d
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_d

    .line 420
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    move/from16 v22, v1

    .line 421
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-wide/from16 v38, v5

    aget-wide v5, v1, v2

    neg-double v5, v5

    aput-wide v5, v1, v2

    .line 422
    aget-wide v40, v11, v2

    add-double v40, v40, v5

    aput-wide v40, v9, v2

    .line 423
    aget-wide v5, v26, v2

    aget-wide v40, v1, v2

    mul-double v5, v5, v40

    mul-double v5, v5, v5

    add-double v5, v38, v5

    add-int/lit8 v1, v22, 0x1

    goto :goto_d

    :cond_d
    move-wide/from16 v38, v5

    .line 426
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    if-eqz v21, :cond_e

    .line 429
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v22

    move-wide/from16 v3, v22

    .line 433
    :cond_e
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v5

    .line 434
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v6

    move-wide/from16 v22, v1

    .line 435
    new-instance v1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v1, v9, v5}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    .line 436
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v11

    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v42, v11, v40

    cmpg-double v2, v42, v36

    if-gez v2, :cond_f

    div-double v44, v11, v36

    mul-double v44, v44, v44

    sub-double v44, v29, v44

    goto :goto_e

    :cond_f
    const-wide/high16 v44, -0x4010000000000000L    # -1.0

    :goto_e
    move-object/from16 v46, v5

    const/4 v2, 0x0

    .line 447
    :goto_f
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v5, :cond_11

    .line 448
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v2

    move/from16 v47, v5

    .line 449
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v48, v5, v47

    .line 450
    aput-wide v19, v32, v2

    const/4 v5, 0x0

    :goto_10
    if-gt v5, v2, :cond_10

    .line 452
    aget-wide v50, v32, v5

    move/from16 v52, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v5

    aget-wide v53, v2, v47

    mul-double v53, v53, v48

    add-double v50, v50, v53

    aput-wide v50, v32, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v52

    goto :goto_10

    :cond_10
    move/from16 v52, v2

    add-int/lit8 v2, v52, 0x1

    goto :goto_f

    :cond_11
    move-wide/from16 v47, v19

    const/4 v2, 0x0

    .line 456
    :goto_11
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v5, :cond_12

    .line 457
    aget-wide v49, v32, v2

    mul-double v49, v49, v49

    add-double v47, v47, v49

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_12
    mul-double v49, v36, v36

    div-double v47, v47, v49

    move-object v2, v6

    .line 461
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v51, v5, v22

    mul-double v51, v51, v22

    div-double v51, v51, v49

    const-wide/high16 v49, 0x4000000000000000L    # 2.0

    mul-double v53, v51, v49

    add-double v53, v47, v53

    move-wide/from16 v55, v5

    add-double v5, v47, v51

    neg-double v5, v5

    cmpl-double v47, v53, v19

    if-nez v47, :cond_13

    move-wide/from16 v47, v19

    goto :goto_12

    :cond_13
    div-double v47, v44, v53

    :goto_12
    const-wide/high16 v51, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v57, 0x3fe0000000000000L    # 0.5

    cmpg-double v59, v47, v51

    if-gtz v59, :cond_17

    cmpg-double v51, v44, v19

    if-gez v51, :cond_14

    mul-double v51, v5, v57

    mul-double v57, v57, v44

    add-double v5, v5, v57

    div-double v57, v51, v5

    :cond_14
    cmpl-double v5, v42, v36

    if-gez v5, :cond_16

    cmpg-double v5, v57, v40

    if-gez v5, :cond_15

    goto :goto_13

    :cond_15
    move-wide/from16 v40, v57

    :cond_16
    :goto_13
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v22

    .line 475
    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    mul-double v3, v3, v40

    .line 476
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v5, v5, v40

    iput-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_14

    :cond_17
    cmpl-double v5, v55, v19

    if-eqz v5, :cond_18

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpl-double v40, v47, v5

    if-ltz v40, :cond_19

    :cond_18
    mul-double v3, v22, v49

    mul-double v5, v55, v57

    .line 479
    iput-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_19
    :goto_14
    move-wide/from16 v22, v3

    cmpl-double v3, v47, v17

    if-ltz v3, :cond_1c

    move-wide/from16 v4, v19

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v10, :cond_1a

    .line 488
    aget-wide v17, v26, v3

    aget-wide v24, v9, v3

    mul-double v17, v17, v24

    mul-double v17, v17, v17

    add-double v4, v4, v17

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 491
    :cond_1a
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    if-eqz v13, :cond_1b

    .line 494
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getIterations()I

    move-result v3

    invoke-interface {v13, v3, v14, v1}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 495
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v1

    :cond_1b
    move-object/from16 v8, v46

    const/16 v21, 0x0

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    .line 501
    :goto_16
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v3, :cond_1d

    .line 502
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v1

    .line 503
    aget-wide v4, v38, v3

    aput-wide v4, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 505
    :cond_1d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 506
    iput-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 512
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v9, v8}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object v15, v1

    move-object v1, v3

    move-wide/from16 v11, v36

    .line 516
    :goto_17
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v17, v3, v5

    if-gtz v17, :cond_1e

    cmpg-double v3, v53, v5

    if-gtz v3, :cond_1e

    cmpg-double v3, v47, v49

    if-lez v3, :cond_1f

    :cond_1e
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v3, v3, v24

    cmpg-double v5, v22, v3

    if-gtz v5, :cond_20

    .line 520
    :cond_1f
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v1

    .line 525
    :cond_20
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v5, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v17, v3, v5

    if-gtz v17, :cond_22

    cmpg-double v3, v53, v5

    if-gtz v3, :cond_22

    cmpg-double v3, v47, v49

    if-lez v3, :cond_21

    goto :goto_18

    .line 528
    :cond_21
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v27

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_22
    :goto_18
    mul-double v3, v5, v24

    cmpg-double v17, v22, v3

    if-lez v17, :cond_24

    cmpg-double v3, v34, v5

    if-lez v3, :cond_23

    move-object v3, v15

    move-object v15, v2

    move-object v2, v3

    move-object v3, v7

    move-wide/from16 v36, v11

    move-object/from16 v11, v38

    move-object/from16 v12, v39

    move-wide/from16 v4, v47

    goto/16 :goto_b

    .line 534
    :cond_23
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v27

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_24
    const/4 v5, 0x1

    .line 531
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v27

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_25
    move-object v7, v3

    move-wide/from16 v3, v22

    move-object v14, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v4, v26

    move-object/from16 v1, v28

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move/from16 v8, v33

    move-wide/from16 v2, v36

    goto/16 :goto_0
.end method
