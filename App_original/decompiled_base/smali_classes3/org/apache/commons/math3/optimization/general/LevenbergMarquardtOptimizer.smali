.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
.method public constructor <init>()V
    .locals 11

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 158
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 237
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 271
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 272
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 273
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 274
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 275
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 209
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 210
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 211
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 212
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 213
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 177
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 730
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 731
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 732
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 733
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 735
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v8, v7, v4

    aput-wide v8, v6, v3

    .line 736
    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 740
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_7

    .line 744
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    .line 745
    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 747
    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 749
    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    .line 755
    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_6

    .line 756
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 760
    aget-wide v10, v1, v4

    cmpl-double v12, v10, v5

    if-eqz v12, :cond_4

    .line 764
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v9

    .line 765
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, v1, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v13, v15

    if-gez v10, :cond_3

    .line 766
    aget-wide v13, v1, v4

    div-double v13, v11, v13

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 767
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v17, v17, v15

    mul-double v13, v13, v17

    goto :goto_4

    .line 770
    :cond_3
    aget-wide v13, v1, v4

    div-double/2addr v13, v11

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 771
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v15, v17, v15

    mul-double v17, v15, v13

    move-wide v13, v15

    :goto_4
    move v15, v3

    move-wide/from16 v2, v17

    move-wide/from16 v16, v5

    .line 777
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v4

    mul-double v11, v11, v13

    aget-wide v18, v1, v4

    mul-double v18, v18, v2

    add-double v11, v11, v18

    aput-wide v11, v5, v9

    .line 778
    aget-wide v5, p4, v4

    mul-double v11, v13, v5

    mul-double v18, v2, v7

    add-double v11, v11, v18

    move-wide/from16 v18, v11

    neg-double v10, v2

    mul-double v5, v5, v10

    mul-double v7, v7, v13

    add-double/2addr v7, v5

    .line 780
    aput-wide v18, p4, v4

    add-int/lit8 v5, v4, 0x1

    .line 783
    :goto_5
    iget v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v6, :cond_5

    .line 784
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v5

    aget-wide v18, v6, v9

    mul-double v20, v13, v18

    .line 785
    aget-wide v22, v1, v5

    mul-double v24, v2, v22

    add-double v20, v20, v24

    mul-double v18, v18, v10

    mul-double v22, v22, v13

    add-double v18, v18, v22

    .line 786
    aput-wide v18, v1, v5

    .line 787
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

    .line 794
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v15

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v15

    aget-wide v4, v2, v3

    aput-wide v4, v1, v15

    .line 795
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v5, v4, v15

    aput-wide v5, v2, v3

    add-int/lit8 v3, v15, 0x1

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v16, v5

    const/4 v2, 0x0

    .line 801
    :goto_6
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_a

    .line 802
    aget-wide v5, v1, v2

    cmpl-double v7, v5, v16

    if-nez v7, :cond_8

    if-ne v4, v3, :cond_8

    move v4, v2

    :cond_8
    if-ge v4, v3, :cond_9

    .line 806
    aput-wide v16, p4, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    if-lez v4, :cond_c

    add-int/lit8 v2, v4, -0x1

    :goto_7
    if-ltz v2, :cond_c

    .line 811
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    move-wide/from16 v6, v16

    :goto_8
    if-ge v5, v4, :cond_b

    .line 814
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v5

    aget-wide v9, v8, v3

    aget-wide v11, p4, v5

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 816
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

    .line 821
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_d

    .line 822
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 557
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    const/4 v9, 0x0

    .line 561
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 562
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 565
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 567
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 568
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 569
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_2

    .line 571
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v21, v11, v9

    mul-double v21, v21, v13

    sub-double v17, v17, v21

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 573
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 579
    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 580
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 581
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v13, v10

    mul-double v11, v11, v14

    .line 582
    aput-wide v11, v4, v10

    mul-double v11, v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 585
    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    .line 588
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 597
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 598
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 599
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v11

    .line 600
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

    .line 603
    :goto_6
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v7, :cond_8

    .line 604
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v15

    const/4 v8, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v8, v15, :cond_7

    move/from16 v25, v7

    .line 607
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v8

    aget-wide v26, v7, v25

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v8

    aget-wide v28, v4, v7

    mul-double v26, v26, v28

    add-double v23, v23, v26

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v25

    goto :goto_7

    :cond_7
    move/from16 v25, v7

    .line 609
    aget-wide v7, v4, v25

    sub-double v7, v7, v23

    move-wide/from16 v23, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v26, v7, v25

    div-double v7, v23, v26

    .line 610
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

    .line 618
    :goto_9
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v9, :cond_b

    .line 619
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v15

    const/4 v10, 0x0

    const-wide/16 v25, 0x0

    :goto_a
    if-gt v10, v15, :cond_a

    move/from16 v27, v9

    .line 622
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 624
    aget-wide v9, p4, v27

    div-double v25, v25, v9

    mul-double v25, v25, v25

    add-double v11, v11, v25

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 627
    :cond_b
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v11, v9, v2

    move-wide/from16 v25, v9

    const-wide/16 v19, 0x0

    cmpl-double v15, v11, v19

    if-nez v15, :cond_c

    const-wide v9, 0x3fb999999999999aL    # 0.1

    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    .line 631
    invoke-static {v2, v3, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    div-double v11, v27, v9

    goto :goto_b

    :cond_c
    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    .line 636
    :goto_b
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v15, v9, v19

    if-nez v15, :cond_d

    div-double v9, v25, v21

    .line 638
    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v9, 0xa

    :goto_c
    if-ltz v9, :cond_18

    .line 644
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v10, v2, v19

    if-nez v10, :cond_e

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v11

    move v15, v9

    move-wide/from16 v9, v27

    .line 645
    invoke-static {v9, v10, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    :cond_e
    move v15, v9

    move-wide/from16 v9, v27

    .line 647
    :goto_d
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v9, 0x0

    .line 648
    :goto_e
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_f

    .line 649
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 650
    aget-wide v17, p4, v10

    mul-double v17, v17, v2

    aput-wide v17, v4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 652
    :cond_f
    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 655
    :goto_f
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_10

    .line 656
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 657
    aget-wide v17, p4, v10

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v21, v1, v10

    mul-double v17, v17, v21

    .line 658
    aput-wide v17, v6, v10

    mul-double v17, v17, v17

    add-double v2, v2, v17

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 661
    :cond_10
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    sub-double v9, v1, p2

    .line 667
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

    .line 673
    :goto_10
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_12

    .line 674
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    .line 675
    aget-wide v21, v6, v1

    aget-wide v23, p4, v1

    mul-double v21, v21, v23

    div-double v21, v21, v17

    aput-wide v21, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    .line 677
    :goto_11
    iget v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_14

    .line 678
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 679
    aget-wide v17, v4, v2

    aget-wide v21, v5, v1

    div-double v17, v17, v21

    aput-wide v17, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    move/from16 v21, v3

    .line 681
    :goto_12
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_13

    .line 682
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    aget-wide v22, v4, v1

    move/from16 v24, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 686
    :goto_13
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_15

    .line 687
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 694
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v7, v1

    goto :goto_14

    :cond_16
    move-wide/from16 v17, v1

    cmpg-double v1, v9, v19

    if-gez v1, :cond_17

    .line 696
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v11, v1

    .line 700
    :cond_17
    :goto_14
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-double v1, v1, v17

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v1, v15, -0x1

    move-wide/from16 v2, p2

    move-wide/from16 v23, v9

    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_c

    :cond_18
    :goto_15
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 929
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 930
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 933
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 936
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 938
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double v4, v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 940
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 853
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 855
    array-length v2, v1

    const/4 v3, 0x0

    .line 856
    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 860
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 863
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double v9, v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 866
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

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

    .line 878
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    aget-wide v15, v14, v15

    mul-double v15, v15, v15

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 881
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

    .line 882
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

    .line 890
    :cond_5
    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_6

    .line 891
    iput v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 894
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v7

    .line 895
    aget v12, v10, v4

    aput v12, v10, v7

    .line 896
    aput v11, v10, v4

    .line 899
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v11

    cmpl-double v7, v12, v5

    .line 900
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    if-lez v7, :cond_7

    neg-double v14, v14

    :cond_7
    mul-double v12, v12, v14

    sub-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v8

    .line 902
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v12, v7, v11

    .line 905
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v14, v7, v11

    .line 906
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 912
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v8

    aget-wide v15, v14, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 916
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v3

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 920
    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 61

    move-object/from16 v0, p0

    .line 281
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v1

    array-length v8, v1

    .line 282
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v9

    .line 283
    array-length v10, v9

    .line 286
    invoke-static {v8, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 287
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    .line 288
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 289
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    .line 290
    new-array v1, v10, [I

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    .line 291
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 296
    new-array v4, v10, [D

    .line 297
    new-array v11, v10, [D

    .line 298
    new-array v1, v8, [D

    .line 299
    new-array v2, v8, [D

    move-object v2, v1

    .line 300
    new-array v1, v8, [D

    .line 301
    new-array v5, v10, [D

    .line 302
    new-array v6, v10, [D

    .line 303
    new-array v7, v10, [D

    .line 305
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 308
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v3

    .line 309
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v13

    .line 310
    new-instance v14, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v14, v9, v3}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 311
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v15

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    const-wide/16 v13, 0x0

    .line 314
    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v19, v13

    .line 317
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v13

    const/16 v21, 0x0

    move-wide/from16 v22, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-wide/from16 v24, v19

    move-wide/from16 v26, v24

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v28, 0x1

    :goto_0
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v17, v2

    .line 323
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 325
    invoke-interface {v12, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_0

    move/from16 v29, v2

    .line 327
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v30, v2, v29

    aput-wide v30, v1, v29

    add-int/lit8 v2, v29, 0x1

    goto :goto_1

    .line 331
    :cond_0
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qTy([D)V

    move-object/from16 v29, v1

    const/4 v2, 0x0

    .line 335
    :goto_2
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v1, :cond_1

    .line 336
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v2

    move/from16 v30, v1

    .line 337
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v2

    move-object/from16 v31, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v32, v1, v30

    aput-wide v32, v31, v30

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    if-eqz v18, :cond_5

    move-wide/from16 v24, v19

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_3

    .line 345
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v26, v2, v1

    cmpl-double v2, v26, v19

    if-nez v2, :cond_2

    move-wide/from16 v26, v30

    .line 349
    :cond_2
    aget-wide v32, v9, v1

    mul-double v32, v32, v26

    mul-double v32, v32, v32

    add-double v24, v24, v32

    .line 351
    aput-wide v26, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 353
    :cond_3
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    cmpl-double v1, v26, v19

    if-nez v1, :cond_4

    .line 356
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v1, v1, v26

    :goto_4
    move-wide/from16 v24, v1

    :cond_5
    move-wide/from16 v1, v22

    cmpl-double v22, v1, v19

    if-eqz v22, :cond_9

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-wide/from16 v4, v19

    const/4 v3, 0x0

    .line 362
    :goto_5
    iget v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v6, :cond_8

    .line 363
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v3

    move/from16 v34, v6

    .line 364
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v35, v6, v34

    cmpl-double v6, v35, v19

    if-eqz v6, :cond_7

    move-wide/from16 v37, v19

    const/4 v6, 0x0

    :goto_6
    if-gt v6, v3, :cond_6

    move/from16 v39, v3

    .line 368
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v6

    aget-wide v40, v3, v34

    aget-wide v42, v29, v6

    mul-double v40, v40, v42

    add-double v37, v37, v40

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v39

    goto :goto_6

    :cond_6
    move/from16 v39, v3

    .line 370
    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    mul-double v35, v35, v1

    move-object v3, v7

    div-double v6, v37, v35

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    goto :goto_7

    :cond_7
    move/from16 v39, v3

    move-object v3, v7

    :goto_7
    add-int/lit8 v6, v39, 0x1

    move-object v7, v3

    move v3, v6

    goto :goto_5

    :cond_8
    move-wide/from16 v34, v4

    goto :goto_8

    :cond_9
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-wide/from16 v34, v19

    :goto_8
    move-object v3, v7

    .line 374
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v6, v34, v4

    if-gtz v6, :cond_a

    .line 376
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 378
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v16

    :cond_a
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v10, :cond_b

    .line 384
    aget-wide v5, v23, v4

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-wide/from16 v36, v1

    aget-wide v1, v7, v4

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v23, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, v36

    goto :goto_9

    :cond_b
    move-wide/from16 v36, v1

    move-object v4, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v5, v19

    move-object/from16 v15, v22

    :goto_a
    const-wide v38, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v5, v38

    if-gez v7, :cond_25

    const/4 v1, 0x0

    .line 391
    :goto_b
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v4, :cond_c

    .line 392
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v1

    .line 393
    aget-wide v5, v9, v4

    aput-wide v5, v11, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 396
    :cond_c
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 397
    iput-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object v7, v3

    move/from16 v17, v8

    move-object/from16 v4, v23

    move-wide/from16 v2, v24

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    move-object v8, v1

    move-object/from16 v1, v29

    .line 404
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide v5, v2

    move-object v3, v7

    move-wide/from16 v24, v19

    const/4 v1, 0x0

    .line 408
    :goto_c
    iget v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_d

    .line 409
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 410
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move v7, v1

    move/from16 v22, v2

    aget-wide v1, v4, v22

    neg-double v1, v1

    aput-wide v1, v4, v22

    .line 411
    aget-wide v40, v11, v22

    add-double v40, v40, v1

    aput-wide v40, v9, v22

    .line 412
    aget-wide v1, v23, v22

    aget-wide v40, v4, v22

    mul-double v1, v1, v40

    mul-double v1, v1, v1

    add-double v24, v24, v1

    add-int/lit8 v1, v7, 0x1

    goto :goto_c

    .line 415
    :cond_d
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    if-eqz v18, :cond_e

    .line 418
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v24

    move-wide/from16 v5, v24

    .line 422
    :cond_e
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v4

    .line 423
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v7

    move-wide/from16 v24, v1

    .line 424
    new-instance v1, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v1, v9, v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v22, v3

    .line 425
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v2

    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v42, v2, v40

    cmpg-double v44, v42, v36

    if-gez v44, :cond_f

    div-double v44, v2, v36

    mul-double v44, v44, v44

    sub-double v44, v30, v44

    goto :goto_d

    :cond_f
    const-wide/high16 v44, -0x4010000000000000L    # -1.0

    :goto_d
    move-object/from16 v46, v4

    move-object/from16 v47, v7

    const/4 v4, 0x0

    .line 436
    :goto_e
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v7, :cond_11

    .line 437
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v4

    move/from16 v48, v7

    .line 438
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v49, v7, v48

    .line 439
    aput-wide v19, v32, v4

    const/4 v7, 0x0

    :goto_f
    if-gt v7, v4, :cond_10

    .line 441
    aget-wide v51, v32, v7

    move/from16 v53, v4

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v7

    aget-wide v54, v4, v48

    mul-double v54, v54, v49

    add-double v51, v51, v54

    aput-wide v51, v32, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v53

    goto :goto_f

    :cond_10
    move/from16 v53, v4

    add-int/lit8 v4, v53, 0x1

    goto :goto_e

    :cond_11
    move-wide/from16 v48, v19

    const/4 v4, 0x0

    .line 445
    :goto_10
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v7, :cond_12

    .line 446
    aget-wide v50, v32, v4

    mul-double v50, v50, v50

    add-double v48, v48, v50

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_12
    mul-double v50, v36, v36

    div-double v48, v48, v50

    move-object v7, v11

    move-object/from16 v52, v12

    .line 450
    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v53, v11, v24

    mul-double v53, v53, v24

    div-double v53, v53, v50

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v55, v53, v50

    add-double v55, v48, v55

    move-wide/from16 v57, v11

    add-double v11, v48, v53

    neg-double v11, v11

    cmpl-double v4, v55, v19

    if-nez v4, :cond_13

    move-wide/from16 v48, v19

    goto :goto_11

    :cond_13
    div-double v48, v44, v55

    :goto_11
    const-wide/high16 v53, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v59, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v48, v53

    if-gtz v4, :cond_17

    cmpg-double v4, v44, v19

    if-gez v4, :cond_14

    mul-double v53, v11, v59

    mul-double v59, v59, v44

    add-double v11, v11, v59

    div-double v59, v53, v11

    :cond_14
    cmpl-double v4, v42, v36

    if-gez v4, :cond_16

    cmpg-double v4, v59, v40

    if-gez v4, :cond_15

    goto :goto_12

    :cond_15
    move-wide/from16 v40, v59

    :cond_16
    :goto_12
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double v11, v11, v24

    .line 464
    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    mul-double v4, v4, v40

    .line 465
    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v11, v11, v40

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_14

    :cond_17
    cmpl-double v4, v57, v19

    if-eqz v4, :cond_19

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v48, v11

    if-ltz v4, :cond_18

    goto :goto_13

    :cond_18
    move-wide/from16 v24, v5

    goto :goto_15

    :cond_19
    :goto_13
    mul-double v4, v24, v50

    mul-double v11, v57, v59

    .line 468
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :goto_14
    move-wide/from16 v24, v4

    :goto_15
    cmpl-double v4, v48, v38

    if-ltz v4, :cond_1c

    move-wide/from16 v5, v19

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v10, :cond_1a

    .line 477
    aget-wide v11, v23, v4

    aget-wide v26, v9, v4

    mul-double v11, v11, v26

    mul-double v11, v11, v11

    add-double/2addr v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 480
    :cond_1a
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    move-object/from16 v4, v16

    if-eqz v13, :cond_1b

    .line 483
    invoke-interface {v13, v14, v4, v1}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 484
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 486
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v1

    :cond_1b
    move-wide v5, v2

    move-object v2, v8

    move-object/from16 v15, v46

    const/16 v18, 0x0

    goto :goto_18

    :cond_1c
    move-object/from16 v4, v16

    const/4 v1, 0x0

    .line 492
    :goto_17
    iget v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_1d

    .line 493
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 494
    aget-wide v5, v7, v2

    aput-wide v5, v9, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 496
    :cond_1d
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 497
    iput-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 503
    new-instance v2, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v2, v9, v15}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide/from16 v5, v36

    .line 507
    :goto_18
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    move-object v3, v1

    move-object v8, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v16, v11, v1

    if-gtz v16, :cond_1e

    cmpg-double v11, v55, v1

    if-gtz v11, :cond_1e

    cmpg-double v1, v48, v50

    if-lez v1, :cond_1f

    :cond_1e
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v1, v1, v26

    cmpg-double v11, v24, v1

    if-gtz v11, :cond_20

    .line 511
    :cond_1f
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 513
    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v3

    .line 519
    :cond_20
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    const-wide v11, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v16, v1, v11

    if-gtz v16, :cond_22

    cmpg-double v1, v55, v11

    if-gtz v1, :cond_22

    cmpg-double v1, v48, v50

    if-lez v1, :cond_21

    goto :goto_19

    .line 520
    :cond_21
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v21

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_22
    :goto_19
    mul-double v1, v26, v11

    cmpg-double v16, v24, v1

    if-lez v16, :cond_24

    cmpg-double v1, v34, v11

    if-lez v1, :cond_23

    move-object v1, v3

    move-object/from16 v16, v4

    move-wide/from16 v36, v5

    move-object v11, v7

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v3, v22

    move-object/from16 v4, v47

    move-wide/from16 v5, v48

    move-object/from16 v12, v52

    const/16 v28, 0x1

    goto/16 :goto_a

    .line 526
    :cond_23
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v21

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_24
    const/4 v8, 0x1

    .line 523
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v21

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_25
    move-wide/from16 v5, v24

    move-object/from16 v16, v1

    move-object v7, v3

    move/from16 v17, v14

    move-object v3, v15

    move-object/from16 v1, v29

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    move-object v15, v4

    move-object/from16 v4, v23

    move-wide/from16 v22, v36

    goto/16 :goto_0
.end method
