.class public Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.super Ljava/lang/Object;
.source "LevenbergMarquardtOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    }
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private final costRelativeTolerance:D

.field private final initialStepBoundFactor:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private final qrRankingThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 114
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v2, v2, v0

    sput-wide v2, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 141
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 162
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 163
    iput-wide p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 164
    iput-wide p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 165
    iput-wide p9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method private determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V
    .locals 28

    move-object/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    .line 809
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v3

    .line 810
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v4

    .line 811
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    .line 816
    aget v8, v3, v7

    add-int/lit8 v9, v7, 0x1

    move v10, v9

    :goto_1
    if-ge v10, v1, :cond_0

    .line 818
    aget-object v11, v4, v10

    aget-object v12, v4, v7

    aget v13, v3, v10

    aget-wide v13, v12, v13

    aput-wide v13, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 820
    :cond_0
    aget-wide v10, v5, v8

    aput-wide v10, v2, v7

    .line 821
    aget-wide v10, p1, v7

    aput-wide v10, p6, v7

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v7, 0x0

    if-ge v5, v1, :cond_7

    .line 829
    aget v9, v3, v5

    .line 830
    aget-wide v9, p2, v9

    cmpl-double v11, v9, v7

    if-eqz v11, :cond_2

    add-int/lit8 v11, v5, 0x1

    .line 832
    array-length v12, v0

    invoke-static {v0, v11, v12, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    .line 834
    :cond_2
    aput-wide v9, v0, v5

    move v9, v5

    move-wide v10, v7

    :goto_3
    if-ge v9, v1, :cond_6

    .line 841
    aget v12, v3, v9

    .line 845
    aget-wide v13, v0, v9

    cmpl-double v15, v13, v7

    if-eqz v15, :cond_4

    .line 849
    aget-object v13, v4, v9

    aget-wide v14, v13, v12

    .line 850
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    aget-wide v18, v0, v9

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v16, v18

    if-gez v13, :cond_3

    .line 851
    aget-wide v16, v0, v9

    div-double v16, v14, v16

    mul-double v18, v16, v16

    add-double v18, v18, v20

    .line 852
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    div-double v20, v20, v18

    mul-double v16, v16, v20

    goto :goto_4

    .line 855
    :cond_3
    aget-wide v16, v0, v9

    div-double v16, v16, v14

    mul-double v18, v16, v16

    add-double v18, v18, v20

    .line 856
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    div-double v18, v20, v18

    mul-double v20, v18, v16

    move-wide/from16 v16, v18

    :goto_4
    move-wide/from16 v18, v7

    move-wide/from16 v6, v20

    .line 862
    aget-object v8, v4, v9

    mul-double v14, v14, v16

    aget-wide v20, v0, v9

    mul-double v20, v20, v6

    add-double v14, v14, v20

    aput-wide v14, v8, v12

    .line 863
    aget-wide v13, p6, v9

    mul-double v20, v16, v13

    mul-double v22, v6, v10

    add-double v20, v20, v22

    move-object v8, v3

    move-object v15, v4

    neg-double v3, v6

    mul-double v13, v13, v3

    mul-double v10, v10, v16

    add-double/2addr v10, v13

    .line 865
    aput-wide v20, p6, v9

    add-int/lit8 v13, v9, 0x1

    :goto_5
    if-ge v13, v1, :cond_5

    .line 869
    aget-object v14, v15, v13

    aget-wide v20, v14, v12

    mul-double v22, v16, v20

    .line 870
    aget-wide v24, v0, v13

    mul-double v26, v6, v24

    add-double v22, v22, v26

    mul-double v20, v20, v3

    mul-double v24, v24, v16

    add-double v20, v20, v24

    .line 871
    aput-wide v20, v0, v13

    .line 872
    aput-wide v22, v14, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    move-object v15, v4

    move-wide/from16 v18, v7

    move-object v8, v3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object v3, v8

    move-object v4, v15

    move-wide/from16 v7, v18

    goto/16 :goto_3

    :cond_6
    move-object v8, v3

    move-object v15, v4

    .line 879
    aget-object v3, v15, v5

    aget v4, v8, v5

    aget-wide v6, v3, v4

    aput-wide v6, v0, v5

    .line 880
    aget-wide v6, v2, v5

    aput-wide v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    move-object v3, v8

    move-object v4, v15

    goto/16 :goto_2

    :cond_7
    move-object v15, v4

    move-wide/from16 v18, v7

    move-object v8, v3

    move v4, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_a

    .line 887
    aget-wide v5, v0, v3

    cmpl-double v7, v5, v18

    if-nez v7, :cond_8

    if-ne v4, v1, :cond_8

    move v4, v3

    :cond_8
    if-ge v4, v1, :cond_9

    .line 891
    aput-wide v18, p6, v3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    if-lez v4, :cond_c

    add-int/lit8 v1, v4, -0x1

    :goto_7
    if-ltz v1, :cond_c

    .line 896
    aget v3, v8, v1

    add-int/lit8 v5, v1, 0x1

    move-wide/from16 v6, v18

    :goto_8
    if-ge v5, v4, :cond_b

    .line 899
    aget-object v9, v15, v5

    aget-wide v10, v9, v3

    aget-wide v12, p6, v5

    mul-double v10, v10, v12

    add-double/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 901
    :cond_b
    aget-wide v9, p6, v1

    sub-double/2addr v9, v6

    aget-wide v5, v0, v1

    div-double/2addr v9, v5

    aput-wide v9, p6, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    .line 906
    :goto_9
    array-length v0, v2

    if-ge v6, v0, :cond_d

    .line 907
    aget v0, v8, v6

    aget-wide v3, p6, v6

    aput-wide v3, v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D
    .locals 30

    move-wide/from16 v0, p2

    move/from16 v7, p6

    .line 625
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v10

    .line 626
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v11

    .line 627
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$400(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)I

    move-result v2

    .line 628
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v3

    const/4 v12, 0x0

    .line 630
    aget-object v4, v10, v12

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 635
    aget v6, v11, v5

    aget-wide v8, p1, v5

    aput-wide v8, p10, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_1
    const-wide/16 v13, 0x0

    if-ge v5, v4, :cond_1

    .line 638
    aget v6, v11, v5

    aput-wide v13, p10, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v2, -0x1

    :goto_2
    if-ltz v4, :cond_3

    .line 641
    aget v5, v11, v4

    .line 642
    aget-wide v8, p10, v5

    aget-wide v15, v3, v5

    div-double/2addr v8, v15

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_2

    .line 644
    aget v15, v11, v6

    aget-wide v16, p10, v15

    aget-object v18, v10, v6

    aget-wide v19, v18, v5

    mul-double v19, v19, v8

    sub-double v16, v16, v19

    aput-wide v16, p10, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 646
    :cond_2
    aput-wide v8, p10, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    move-wide v5, v13

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_4

    .line 653
    aget v8, v11, v4

    .line 654
    aget-wide v15, p4, v8

    aget-wide v17, p10, v8

    mul-double v15, v15, v17

    .line 655
    aput-wide v15, p7, v8

    mul-double v15, v15, v15

    add-double/2addr v5, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 658
    :cond_4
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double v8, v4, v0

    move-wide/from16 v16, v13

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double v18, v0, v12

    cmpg-double v6, v8, v18

    if-gtz v6, :cond_5

    return-wide v16

    :cond_5
    if-ne v2, v7, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_6

    .line 672
    aget v6, v11, v2

    .line 673
    aget-wide v20, p7, v6

    aget-wide v22, p4, v6

    div-double v22, v22, v4

    mul-double v20, v20, v22

    aput-wide v20, p7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v16

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_8

    .line 677
    aget v6, v11, v2

    move-wide/from16 v22, v16

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v2, :cond_7

    .line 680
    aget-object v24, v10, v14

    aget-wide v25, v24, v6

    aget v24, v11, v14

    aget-wide v27, p7, v24

    mul-double v25, v25, v27

    add-double v22, v22, v25

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 682
    :cond_7
    aget-wide v24, p7, v6

    sub-double v24, v24, v22

    aget-wide v22, v3, v6

    div-double v24, v24, v22

    .line 683
    aput-wide v24, p7, v6

    mul-double v24, v24, v24

    add-double v20, v20, v24

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    mul-double v2, v0, v20

    div-double v2, v8, v2

    goto :goto_8

    :cond_9
    move-wide/from16 v2, v16

    :goto_8
    move-wide/from16 v20, v16

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v7, :cond_b

    .line 692
    aget v14, v11, v6

    move-wide/from16 v23, v16

    const/4 v15, 0x0

    :goto_a
    if-gt v15, v6, :cond_a

    .line 695
    aget-object v25, v10, v15

    aget-wide v26, v25, v14

    aget-wide v28, p1, v15

    mul-double v26, v26, v28

    add-double v23, v23, v26

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 697
    :cond_a
    aget-wide v14, p4, v14

    div-double v23, v23, v14

    mul-double v23, v23, v23

    add-double v20, v20, v23

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 700
    :cond_b
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    div-double v20, v14, v0

    cmpl-double v6, v20, v16

    if-nez v6, :cond_c

    .line 703
    sget-wide v20, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    div-double v20, v20, v12

    :cond_c
    move-wide/from16 v0, p11

    move-wide/from16 v12, v20

    .line 708
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    cmpl-double v6, v0, v16

    if-nez v6, :cond_d

    div-double v0, v14, v4

    :cond_d
    const/16 v4, 0xa

    move-wide/from16 v20, v12

    move-wide v12, v2

    move-wide/from16 v2, v20

    const/16 v14, 0xa

    :goto_b
    move-wide/from16 v20, v8

    if-ltz v14, :cond_18

    cmpl-double v4, v0, v16

    if-nez v4, :cond_e

    .line 717
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 719
    :cond_e
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v7, :cond_f

    .line 721
    aget v5, v11, v4

    .line 722
    aget-wide v8, p4, v5

    mul-double v8, v8, v23

    aput-wide v8, p7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_f
    move-object/from16 v6, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object v15, v10

    move-object/from16 v25, v11

    move-wide v10, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 724
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V

    move-wide/from16 v3, v16

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v7, :cond_10

    .line 728
    aget v5, v25, v2

    .line 729
    aget-wide v8, p4, v5

    aget-wide v23, p10, v5

    mul-double v8, v8, v23

    .line 730
    aput-wide v8, p9, v5

    mul-double v8, v8, v8

    add-double/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 733
    :cond_10
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double v8, v2, p2

    .line 739
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v4, v18

    if-lez v6, :cond_18

    cmpl-double v4, v12, v16

    if-nez v4, :cond_11

    cmpg-double v4, v8, v20

    if-gtz v4, :cond_11

    cmpg-double v4, v20, v16

    if-gez v4, :cond_11

    goto/16 :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v7, :cond_12

    .line 748
    aget v5, v25, v4

    .line 749
    aget-wide v20, p9, v5

    aget-wide v23, p4, v5

    mul-double v20, v20, v23

    div-double v20, v20, v2

    aput-wide v20, p7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :cond_13
    if-ge v2, v7, :cond_14

    .line 752
    aget v3, v25, v2

    .line 753
    aget-wide v4, p7, v3

    aget-wide v20, p8, v2

    div-double v4, v4, v20

    aput-wide v4, p7, v3

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    :goto_f
    if-ge v6, v7, :cond_13

    .line 756
    aget v20, v25, v6

    aget-wide v23, p7, v20

    aget-object v21, v15, v6

    aget-wide v26, v21, v3

    mul-double v26, v26, v4

    sub-double v23, v23, v26

    aput-wide v23, p7, v20

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_14
    move-wide/from16 v3, v16

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v7, :cond_15

    .line 761
    aget v5, v25, v2

    aget-wide v5, p7, v5

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_15
    mul-double v2, p2, v3

    div-double v2, v8, v2

    cmpl-double v4, v8, v16

    if-lez v4, :cond_16

    .line 768
    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    move-wide v12, v4

    goto :goto_11

    :cond_16
    cmpg-double v4, v8, v16

    if-gez v4, :cond_17

    .line 770
    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    move-wide v10, v4

    :cond_17
    :goto_11
    add-double/2addr v0, v2

    .line 774
    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    add-int/lit8 v14, v14, -0x1

    move-wide v2, v10

    move-object v10, v15

    move-object/from16 v11, v25

    goto/16 :goto_b

    :cond_18
    :goto_12
    return-wide v0
.end method

.method private qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V
    .locals 15

    .line 1024
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v0

    .line 1025
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v1

    .line 1026
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$500(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v2

    .line 1028
    array-length v3, v0

    const/4 v4, 0x0

    .line 1029
    aget-object v5, v0, v4

    array-length v5, v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 1032
    aget v6, v1, v4

    const-wide/16 v7, 0x0

    move v9, v4

    :goto_1
    if-ge v9, v3, :cond_0

    .line 1035
    aget-object v10, v0, v9

    aget-wide v11, v10, v6

    aget-wide v13, p1, v9

    mul-double v11, v11, v13

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1037
    :cond_0
    aget-wide v9, v2, v6

    mul-double v7, v7, v9

    move v9, v4

    :goto_2
    if-ge v9, v3, :cond_1

    .line 1039
    aget-wide v10, p1, v9

    aget-object v12, v0, v9

    aget-wide v13, v12, v6

    mul-double v13, v13, v7

    sub-double/2addr v10, v13

    aput-wide v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-object/from16 v2, p1

    .line 941
    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 943
    array-length v0, v2

    const/4 v1, 0x0

    .line 944
    aget-object v3, v2, v1

    array-length v3, v3

    .line 946
    new-array v4, v3, [I

    .line 947
    new-array v5, v3, [D

    .line 948
    new-array v6, v3, [D

    .line 949
    new-array v7, v3, [D

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    if-ge v8, v3, :cond_1

    .line 953
    aput v8, v4, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_0

    .line 956
    aget-object v12, v2, v11

    aget-wide v13, v12, v8

    mul-double v13, v13, v13

    add-double/2addr v9, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 959
    :cond_0
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_b

    const/4 v11, -0x1

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v14, v4

    :goto_3
    if-ge v14, v3, :cond_5

    move v15, v4

    move-wide/from16 v16, v9

    :goto_4
    if-ge v15, v0, :cond_2

    .line 971
    aget-object v18, v2, v15

    aget v19, v8, v14

    aget-wide v19, v18, v19

    mul-double v19, v19, v19

    add-double v16, v16, v19

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 974
    :cond_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_4

    cmpl-double v15, v16, v12

    if-lez v15, :cond_3

    move v11, v14

    move-wide/from16 v12, v16

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 975
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_5
    move-object/from16 v14, p0

    move-object/from16 p1, v2

    .line 983
    iget-wide v1, v14, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v16, v12, v1

    if-gtz v16, :cond_6

    .line 984
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    return-object v1

    :cond_6
    move-object/from16 v2, p1

    .line 986
    aget v1, v8, v11

    .line 987
    aget v16, v8, v4

    aput v16, v8, v11

    .line 988
    aput v1, v8, v4

    .line 991
    aget-object v11, v2, v4

    aget-wide v16, v11, v1

    cmpl-double v11, v16, v9

    .line 992
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    if-lez v11, :cond_7

    neg-double v9, v9

    :cond_7
    mul-double v16, v16, v9

    sub-double v12, v12, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v12

    .line 994
    aput-wide v16, v7, v1

    .line 997
    aput-wide v9, v5, v1

    .line 998
    aget-object v11, v2, v4

    aget-wide v12, v11, v1

    sub-double/2addr v12, v9

    aput-wide v12, v11, v1

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v4

    :goto_5
    if-lez v9, :cond_a

    move v10, v4

    const-wide/16 v11, 0x0

    :goto_6
    if-ge v10, v0, :cond_8

    .line 1004
    aget-object v13, v2, v10

    aget-wide v20, v13, v1

    add-int v22, v4, v9

    aget v22, v8, v22

    aget-wide v22, v13, v22

    mul-double v20, v20, v22

    add-double v11, v11, v20

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    mul-double v11, v11, v16

    move v10, v4

    :goto_7
    if-ge v10, v0, :cond_9

    .line 1008
    aget-object v13, v2, v10

    add-int v20, v4, v9

    aget v20, v8, v20

    aget-wide v21, v13, v20

    aget-wide v23, v13, v1

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    aput-wide v21, v13, v20

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v14, p0

    .line 1013
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move/from16 v4, p2

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    return-object v1
.end method


# virtual methods
.method public getCostRelativeTolerance()D
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    return-wide v0
.end method

.method public getInitialStepBoundFactor()D
    .locals 2

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    return-wide v0
.end method

.method public getOrthoTolerance()D
    .locals 2

    .line 283
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    return-wide v0
.end method

.method public getParameterRelativeTolerance()D
    .locals 2

    .line 273
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    return-wide v0
.end method

.method public getRankingThreshold()D
    .locals 2

    .line 293
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-wide v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 299
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result v14

    .line 300
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result v15

    .line 301
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    .line 303
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v16

    .line 304
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v17

    .line 306
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    .line 310
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 312
    new-array v10, v15, [D

    .line 319
    new-array v4, v15, [D

    .line 320
    new-array v3, v15, [D

    .line 321
    new-array v5, v14, [D

    .line 322
    new-array v5, v14, [D

    .line 323
    new-array v7, v15, [D

    .line 324
    new-array v8, v15, [D

    .line 325
    new-array v9, v15, [D

    .line 329
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 331
    new-instance v11, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-interface {v13, v11}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v11

    .line 332
    invoke-interface {v11}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v12

    .line 333
    invoke-interface {v11}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    const/16 v22, 0x1

    .line 338
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 343
    invoke-interface {v11}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    invoke-direct {v0, v13, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move-result-object v13

    .line 345
    invoke-static {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v29

    .line 346
    invoke-static {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v30

    .line 347
    invoke-static {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v31

    .line 348
    invoke-static {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$300(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v34, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v14, :cond_0

    .line 353
    aget-wide v35, v12, v1

    aput-wide v35, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_0
    invoke-direct {v0, v5, v13}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    .line 362
    aget v35, v30, v1

    .line 363
    aget-object v36, v29, v1

    aget-wide v37, v31, v35

    aput-wide v37, v36, v35

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    if-eqz v22, :cond_5

    move-wide/from16 v25, v20

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v15, :cond_3

    .line 371
    aget-wide v27, v32, v1

    cmpl-double v31, v27, v20

    if-nez v31, :cond_2

    move-wide/from16 v27, v35

    .line 375
    :cond_2
    aget-wide v37, v34, v1

    mul-double v37, v37, v27

    mul-double v37, v37, v37

    add-double v25, v25, v37

    .line 377
    aput-wide v27, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 379
    :cond_3
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    cmpl-double v1, v27, v20

    move-object/from16 v31, v2

    if-nez v1, :cond_4

    .line 382
    iget-wide v1, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v1, v1, v27

    :goto_4
    move-wide/from16 v25, v1

    goto :goto_5

    :cond_5
    move-object/from16 v31, v2

    :goto_5
    cmpl-double v1, v18, v20

    move-object/from16 v37, v3

    if-eqz v1, :cond_9

    move-wide/from16 v2, v20

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v6, :cond_8

    .line 389
    aget v38, v30, v1

    .line 390
    aget-wide v39, v32, v38

    cmpl-double v41, v39, v20

    if-eqz v41, :cond_7

    move-object/from16 v41, v4

    move-wide/from16 v42, v20

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v1, :cond_6

    .line 394
    aget-object v44, v29, v4

    aget-wide v45, v44, v38

    aget-wide v47, v5, v4

    mul-double v45, v45, v47

    add-double v42, v42, v45

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 396
    :cond_6
    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    mul-double v39, v39, v18

    move-object/from16 v38, v5

    div-double v4, v42, v39

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    goto :goto_8

    :cond_7
    move-object/from16 v41, v4

    move-object/from16 v38, v5

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v38

    move-object/from16 v4, v41

    goto :goto_6

    :cond_8
    move-wide/from16 v39, v2

    goto :goto_9

    :cond_9
    move-wide/from16 v39, v20

    :goto_9
    move-object/from16 v41, v4

    move-object/from16 v38, v5

    .line 400
    iget-wide v1, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v3, v39, v1

    if-gtz v3, :cond_a

    .line 402
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-direct {v1, v11, v2, v3}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v1

    :cond_a
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v15, :cond_b

    .line 410
    aget-wide v2, v41, v1

    aget-wide v4, v32, v1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    aput-wide v2, v41, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    move-object v1, v11

    move-wide/from16 v4, v20

    move-wide/from16 v2, v25

    :goto_b
    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v32, v4, v25

    if-gez v32, :cond_26

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v6, :cond_c

    .line 418
    aget v4, v30, v1

    .line 419
    aget-wide v42, v34, v4

    aput-wide v42, v37, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    move-wide/from16 v4, v23

    move-object/from16 v24, v11

    move-wide v11, v4

    move-object v5, v13

    move/from16 v23, v14

    move-object/from16 v13, v31

    move-object/from16 v14, v34

    move-object/from16 v1, v38

    move-object/from16 v4, v41

    .line 427
    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D

    move-result-wide v11

    move-wide/from16 v31, v20

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v6, :cond_d

    .line 434
    aget v34, v30, v1

    move-object/from16 v41, v4

    move-object/from16 v42, v5

    .line 435
    aget-wide v4, v10, v34

    neg-double v4, v4

    aput-wide v4, v10, v34

    .line 436
    aget-wide v43, v37, v34

    add-double v43, v43, v4

    aput-wide v43, v14, v34

    .line 437
    aget-wide v4, v41, v34

    aget-wide v43, v10, v34

    mul-double v4, v4, v43

    mul-double v4, v4, v4

    add-double v31, v31, v4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    goto :goto_d

    :cond_d
    move-object/from16 v41, v4

    move-object/from16 v42, v5

    .line 440
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    if-eqz v22, :cond_e

    .line 443
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 447
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 448
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    move-wide/from16 v31, v4

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v1

    .line 449
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v5

    .line 450
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v43

    const-wide v45, 0x3fb999999999999aL    # 0.1

    mul-double v47, v43, v45

    cmpg-double v34, v47, v18

    if-gez v34, :cond_f

    div-double v49, v43, v18

    mul-double v49, v49, v49

    sub-double v49, v35, v49

    goto :goto_e

    :cond_f
    const-wide/high16 v49, -0x4010000000000000L    # -1.0

    :goto_e
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_11

    .line 462
    aget v34, v30, v4

    .line 463
    aget-wide v51, v10, v34

    .line 464
    aput-wide v20, v7, v4

    move-object/from16 v53, v5

    const/4 v5, 0x0

    :goto_10
    if-gt v5, v4, :cond_10

    .line 466
    aget-wide v54, v7, v5

    aget-object v56, v29, v5

    aget-wide v57, v56, v34

    mul-double v57, v57, v51

    add-double v54, v54, v57

    aput-wide v54, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v53

    goto :goto_f

    :cond_11
    move-object/from16 v53, v5

    move-wide/from16 v51, v20

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v6, :cond_12

    .line 471
    aget-wide v54, v7, v4

    mul-double v54, v54, v54

    add-double v51, v51, v54

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_12
    mul-double v4, v18, v18

    div-double v51, v51, v4

    mul-double v54, v11, v31

    mul-double v54, v54, v31

    div-double v54, v54, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v56, v54, v4

    add-double v56, v51, v56

    move-wide/from16 v58, v4

    add-double v4, v51, v54

    neg-double v4, v4

    cmpl-double v34, v56, v20

    if-nez v34, :cond_13

    move-wide/from16 v51, v20

    goto :goto_12

    :cond_13
    div-double v51, v49, v56

    :goto_12
    const-wide/high16 v54, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    cmpg-double v34, v51, v54

    if-gtz v34, :cond_17

    cmpg-double v34, v49, v20

    if-gez v34, :cond_14

    mul-double v54, v4, v60

    mul-double v60, v60, v49

    add-double v4, v4, v60

    div-double v60, v54, v4

    :cond_14
    cmpl-double v4, v47, v18

    if-gez v4, :cond_16

    cmpg-double v4, v60, v45

    if-gez v4, :cond_15

    goto :goto_13

    :cond_15
    move-wide/from16 v45, v60

    :cond_16
    :goto_13
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v4, v4, v31

    .line 489
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double v2, v2, v45

    div-double v11, v11, v45

    goto :goto_14

    :cond_17
    cmpl-double v4, v11, v20

    if-eqz v4, :cond_18

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v34, v51, v4

    if-ltz v34, :cond_19

    :cond_18
    mul-double v4, v31, v58

    mul-double v11, v11, v60

    move-wide v2, v4

    :cond_19
    :goto_14
    cmpl-double v4, v51, v25

    if-ltz v4, :cond_1d

    move-wide/from16 v18, v20

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v15, :cond_1a

    .line 502
    aget-wide v25, v41, v4

    aget-wide v27, v14, v4

    mul-double v25, v25, v27

    mul-double v25, v25, v25

    add-double v18, v18, v25

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 505
    :cond_1a
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    if-eqz v13, :cond_1b

    .line 508
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    move-object/from16 v5, v24

    invoke-interface {v13, v4, v5, v1}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 509
    new-instance v2, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v2

    :cond_1b
    move-object/from16 v5, v24

    :cond_1c
    move-wide/from16 v18, v43

    const/16 v22, 0x0

    goto :goto_17

    :cond_1d
    move-object/from16 v5, v24

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v6, :cond_1e

    .line 515
    aget v4, v30, v1

    .line 516
    aget-wide v24, v37, v4

    aput-wide v24, v14, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1e
    move-object v1, v5

    .line 526
    :goto_17
    invoke-static/range {v49 .. v50}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    move-wide/from16 v31, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v4, v24, v2

    if-gtz v4, :cond_1f

    cmpg-double v4, v56, v2

    if-gtz v4, :cond_1f

    cmpg-double v2, v51, v58

    if-lez v2, :cond_20

    :cond_1f
    iget-wide v2, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v2, v2, v27

    cmpg-double v4, v31, v2

    if-gtz v4, :cond_21

    .line 530
    :cond_20
    new-instance v2, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v2

    .line 534
    :cond_21
    invoke-static/range {v49 .. v50}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    sget-wide v24, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v4, v2, v24

    if-gtz v4, :cond_23

    cmpg-double v2, v56, v24

    if-gtz v2, :cond_23

    cmpg-double v2, v51, v58

    if-lez v2, :cond_22

    goto :goto_18

    .line 537
    :cond_22
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v33

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_23
    :goto_18
    mul-double v2, v24, v27

    cmpg-double v4, v31, v2

    if-lez v4, :cond_25

    cmpg-double v2, v39, v24

    if-lez v2, :cond_24

    move-object/from16 v34, v14

    move/from16 v14, v23

    move-wide/from16 v2, v31

    move-wide/from16 v23, v11

    move-object/from16 v31, v13

    move-object/from16 v13, v42

    move-object/from16 v12, v53

    move-object v11, v5

    move-wide/from16 v4, v51

    goto/16 :goto_b

    .line 543
    :cond_24
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v33

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_25
    const/4 v4, 0x1

    .line 540
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v5, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v33

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_26
    move-wide/from16 v24, v23

    move-object v11, v1

    move-wide/from16 v23, v24

    move-object/from16 v1, v34

    move-object/from16 v5, v38

    move-object/from16 v4, v41

    move-wide/from16 v25, v2

    move-object/from16 v2, v31

    move-object/from16 v3, v37

    goto/16 :goto_0
.end method

.method public withCostRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11

    .line 192
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withInitialStepBoundFactor(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11

    .line 179
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withOrthoTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11

    .line 222
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v7, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withParameterRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11

    .line 206
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v5, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withRankingThreshold(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11

    .line 238
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide v9, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method
