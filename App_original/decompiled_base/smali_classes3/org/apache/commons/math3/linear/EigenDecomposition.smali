.class public Lorg/apache/commons/math3/linear/EigenDecomposition;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private final isSymmetric:Z

.field private main:[D

.field private maxIter:B

.field private realEigenvalues:[D

.field private secondary:[D

.field private transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 81
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 119
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    mul-int v0, v0, v1

    int-to-double v0, v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v0, v0, v2

    .line 120
    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 123
    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;

    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 81
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 159
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 160
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    const/4 p2, 0x0

    .line 161
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 162
    array-length p1, p1

    const/4 p2, 0x2

    .line 163
    new-array p2, p2, [I

    aput p1, p2, v0

    const/4 v0, 0x0

    aput p1, p2, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[D

    :goto_0
    if-ge v0, p1, :cond_0

    .line 165
    aget-object v1, p2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    return-void
.end method

.method public constructor <init>([D[DD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>([D[D)V

    return-void
.end method

.method private cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 786
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {p1, p5, p6, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method private findEigenVectors([[D)V
    .locals 37

    move-object/from16 v0, p0

    .line 594
    invoke-virtual/range {p1 .. p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 595
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    array-length v2, v2

    .line 596
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 597
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 598
    new-array v3, v2, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_0

    .line 600
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    aget-wide v8, v7, v5

    aput-wide v8, v6, v5

    .line 601
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    aget-wide v7, v6, v5

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 603
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    aget-wide v8, v7, v6

    aput-wide v8, v5, v6

    const-wide/16 v7, 0x0

    .line 604
    aput-wide v7, v3, v6

    move-wide v9, v7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    .line 609
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v13, v11, v9

    if-lez v13, :cond_1

    .line 610
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v5

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    .line 612
    :cond_1
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v13, v11, v9

    if-lez v13, :cond_2

    .line 613
    aget-wide v9, v3, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    cmpl-double v5, v9, v7

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_6

    .line 619
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v13, v13, v9

    cmpg-double v15, v11, v13

    if-gtz v15, :cond_4

    .line 620
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v7, v11, v5

    .line 622
    :cond_4
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v13, v13, v9

    cmpg-double v15, v11, v13

    if-gtz v15, :cond_5

    .line 623
    aput-wide v7, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_12

    const/4 v9, 0x0

    :cond_7
    move v10, v5

    :goto_4
    if-ge v10, v6, :cond_9

    .line 633
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v10

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v14

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    .line 635
    aget-wide v15, v3, v10

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v15, v11

    cmpl-double v13, v15, v11

    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    move v10, v14

    goto :goto_4

    :cond_9
    :goto_5
    if-eq v10, v5, :cond_11

    .line 640
    iget-byte v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    if-eq v9, v11, :cond_10

    add-int/lit8 v9, v9, 0x1

    .line 645
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, v11, v12

    aget-wide v14, v11, v5

    sub-double/2addr v12, v14

    aget-wide v14, v3, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double v14, v12, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    .line 646
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    cmpg-double v11, v12, v7

    if-gez v11, :cond_a

    .line 648
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    sub-double/2addr v12, v14

    goto :goto_6

    .line 650
    :cond_a
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    add-double/2addr v12, v14

    :goto_6
    div-double v22, v22, v12

    add-double v20, v20, v22

    add-int/lit8 v11, v10, -0x1

    move-wide/from16 v24, v7

    move-wide/from16 v12, v18

    move-wide/from16 v22, v12

    :goto_7
    if-lt v11, v5, :cond_e

    .line 657
    aget-wide v14, v3, v11

    mul-double v12, v12, v14

    mul-double v22, v22, v14

    .line 659
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    cmpl-double v28, v14, v26

    if-ltz v28, :cond_b

    div-double v14, v20, v12

    mul-double v26, v14, v14

    add-double v26, v26, v18

    .line 661
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    add-int/lit8 v28, v11, 0x1

    mul-double v12, v12, v26

    .line 662
    aput-wide v12, v3, v28

    div-double v12, v18, v26

    mul-double v14, v14, v12

    move-wide/from16 v35, v26

    move-wide/from16 v26, v14

    move-wide/from16 v14, v35

    goto :goto_8

    :cond_b
    div-double v12, v12, v20

    mul-double v14, v12, v12

    add-double v14, v14, v18

    .line 667
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    add-int/lit8 v26, v11, 0x1

    mul-double v27, v20, v14

    .line 668
    aput-wide v27, v3, v26

    div-double v26, v18, v14

    mul-double v12, v12, v26

    :goto_8
    add-int/lit8 v28, v11, 0x1

    .line 672
    aget-wide v29, v3, v28

    cmpl-double v31, v29, v7

    if-nez v31, :cond_c

    .line 673
    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v16, v12, v28

    sub-double v16, v16, v24

    aput-wide v16, v12, v28

    .line 674
    aput-wide v7, v3, v10

    goto :goto_a

    .line 677
    :cond_c
    iget-object v14, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v14, v28

    sub-double v20, v20, v24

    .line 678
    aget-wide v24, v14, v11

    sub-double v24, v24, v20

    mul-double v24, v24, v12

    mul-double v29, v26, v16

    mul-double v29, v29, v22

    add-double v24, v24, v29

    mul-double v29, v12, v24

    add-double v20, v20, v29

    .line 680
    aput-wide v20, v14, v28

    mul-double v14, v26, v24

    sub-double v20, v14, v22

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v2, :cond_d

    .line 683
    aget-object v15, v1, v14

    aget-wide v22, v15, v28

    .line 684
    aget-wide v31, v15, v11

    mul-double v31, v31, v12

    mul-double v33, v26, v22

    add-double v31, v31, v33

    aput-wide v31, v15, v28

    .line 685
    aget-wide v31, v15, v11

    mul-double v31, v31, v26

    mul-double v22, v22, v12

    sub-double v31, v31, v22

    aput-wide v31, v15, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v14, v24

    move-wide/from16 v22, v26

    move-wide/from16 v24, v29

    goto/16 :goto_7

    :cond_e
    :goto_a
    cmpl-double v12, v14, v7

    if-nez v12, :cond_f

    if-lt v11, v5, :cond_f

    goto :goto_b

    .line 691
    :cond_f
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    sub-double v12, v12, v24

    aput-wide v12, v11, v5

    .line 692
    aput-wide v20, v3, v5

    .line 693
    aput-wide v7, v3, v10

    goto :goto_b

    .line 641
    :cond_10
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-byte v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    :cond_11
    :goto_b
    if-ne v10, v5, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_12
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_16

    .line 701
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v5, v3

    add-int/lit8 v5, v3, 0x1

    move v11, v3

    move v6, v5

    :goto_d
    if-ge v6, v2, :cond_14

    .line 703
    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v13, v12, v6

    cmpl-double v12, v13, v9

    if-lez v12, :cond_13

    move v11, v6

    move-wide v9, v13

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_14
    if-eq v11, v3, :cond_15

    .line 709
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v6, v3

    aput-wide v12, v6, v11

    .line 710
    aput-wide v9, v6, v3

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v2, :cond_15

    .line 712
    aget-object v9, v1, v6

    aget-wide v12, v9, v3

    .line 713
    aget-wide v14, v9, v11

    aput-wide v14, v9, v3

    .line 714
    aput-wide v12, v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    move v3, v5

    goto :goto_c

    :cond_16
    move-wide v5, v7

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_18

    .line 722
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v3

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v11, v9, v5

    if-lez v11, :cond_17

    .line 723
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v5, v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_18
    cmpl-double v3, v5, v7

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    .line 729
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v3

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v11, v11, v5

    cmpg-double v13, v9, v11

    if-gez v13, :cond_19

    .line 730
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v7, v9, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 734
    :cond_1a
    new-array v3, v2, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 735
    new-array v3, v2, [D

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_1c

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v2, :cond_1b

    .line 738
    aget-object v7, v1, v6

    aget-wide v8, v7, v5

    aput-wide v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 740
    :cond_1b
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    return-void
.end method

.method private findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 797
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v9

    .line 798
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v10

    .line 800
    array-length v11, v9

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-wide v2, v12

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 805
    invoke-static {v4, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_1
    if-ge v4, v11, :cond_0

    .line 806
    aget-object v5, v9, v1

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    .line 811
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v1

    move-wide v15, v2

    if-nez v1, :cond_1a

    add-int/lit8 v1, v11, -0x1

    move v2, v1

    move-wide/from16 v17, v12

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    :goto_2
    if-ltz v2, :cond_14

    .line 822
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v23, v3, v2

    .line 823
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v7, v3, v2

    .line 825
    invoke-static {v7, v8, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_9

    .line 828
    aget-object v3, v9, v2

    aput-wide v25, v3, v2

    add-int/lit8 v3, v2, -0x1

    move v6, v2

    move-wide/from16 v4, v17

    :goto_3
    if-ltz v3, :cond_8

    .line 830
    aget-object v7, v9, v3

    aget-wide v17, v7, v3

    sub-double v17, v17, v23

    move v14, v6

    move-wide v7, v12

    :goto_4
    if-gt v14, v2, :cond_2

    .line 833
    aget-object v21, v9, v3

    aget-wide v27, v21, v14

    aget-object v21, v9, v14

    aget-wide v29, v21, v2

    mul-double v27, v27, v29

    add-double v7, v7, v27

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 835
    :cond_2
    iget-object v14, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v27, v14, v3

    const-wide/16 v29, 0x0

    const-wide v31, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v27 .. v32}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v14

    if-gez v14, :cond_3

    move-wide v4, v7

    move-object v14, v9

    move-object/from16 v27, v10

    move-wide/from16 v19, v17

    goto/16 :goto_7

    .line 840
    :cond_3
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    move-object v14, v9

    move-object/from16 v27, v10

    aget-wide v9, v6, v3

    invoke-static {v9, v10, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-eqz v6, :cond_5

    cmpl-double v6, v17, v12

    if-eqz v6, :cond_4

    .line 842
    aget-object v6, v14, v3

    neg-double v9, v7

    div-double v9, v9, v17

    aput-wide v9, v6, v2

    goto :goto_5

    .line 844
    :cond_4
    aget-object v6, v14, v3

    neg-double v9, v7

    sget-wide v17, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v17, v17, v15

    div-double v9, v9, v17

    aput-wide v9, v6, v2

    goto :goto_5

    .line 848
    :cond_5
    aget-object v6, v14, v3

    add-int/lit8 v9, v3, 0x1

    aget-wide v21, v6, v9

    .line 849
    aget-object v10, v14, v9

    aget-wide v28, v10, v3

    .line 850
    iget-object v10, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v30, v10, v3

    sub-double v32, v30, v23

    sub-double v30, v30, v23

    mul-double v32, v32, v30

    iget-object v10, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v30, v10, v3

    mul-double v30, v30, v30

    add-double v32, v32, v30

    mul-double v30, v21, v4

    mul-double v34, v19, v7

    sub-double v30, v30, v34

    div-double v30, v30, v32

    .line 853
    aput-wide v30, v6, v2

    .line 854
    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    cmpl-double v6, v32, v34

    if-lez v6, :cond_6

    .line 855
    aget-object v6, v14, v9

    neg-double v9, v7

    mul-double v17, v17, v30

    sub-double v9, v9, v17

    div-double v9, v9, v21

    aput-wide v9, v6, v2

    goto :goto_5

    .line 857
    :cond_6
    aget-object v6, v14, v9

    neg-double v9, v4

    mul-double v28, v28, v30

    sub-double v9, v9, v28

    div-double v9, v9, v19

    aput-wide v9, v6, v2

    .line 862
    :goto_5
    aget-object v6, v14, v3

    aget-wide v9, v6, v2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    .line 863
    sget-wide v17, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v17, v17, v9

    mul-double v17, v17, v9

    cmpl-double v6, v17, v25

    if-lez v6, :cond_7

    move v6, v3

    :goto_6
    if-gt v6, v2, :cond_7

    .line 865
    aget-object v17, v14, v6

    aget-wide v21, v17, v2

    div-double v21, v21, v9

    aput-wide v21, v17, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    move v6, v3

    :goto_7
    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v21, v7

    move-object v9, v14

    move-object/from16 v10, v27

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v27, v10

    move/from16 v31, v1

    move v12, v2

    move-wide/from16 v17, v4

    move-object/from16 v34, v9

    move/from16 v40, v11

    goto/16 :goto_e

    :cond_9
    move-object v14, v9

    move-object/from16 v27, v10

    cmpg-double v3, v7, v12

    if-gez v3, :cond_13

    add-int/lit8 v9, v2, -0x1

    .line 875
    aget-object v3, v14, v2

    aget-wide v4, v3, v9

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    aget-object v5, v14, v9

    aget-wide v28, v5, v2

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpl-double v10, v3, v5

    if-lez v10, :cond_a

    .line 876
    aget-object v3, v14, v9

    aget-object v4, v14, v2

    aget-wide v5, v4, v9

    div-double v5, v7, v5

    aput-wide v5, v3, v9

    .line 877
    aget-wide v5, v4, v2

    sub-double v5, v5, v23

    neg-double v5, v5

    aget-wide v28, v4, v9

    div-double v5, v5, v28

    aput-wide v5, v3, v2

    move v10, v1

    move-wide/from16 v28, v12

    move v12, v2

    goto :goto_8

    .line 879
    :cond_a
    aget-object v3, v14, v9

    aget-wide v4, v3, v2

    neg-double v4, v4

    aget-wide v28, v3, v9

    sub-double v28, v28, v23

    move v3, v1

    move v6, v2

    const-wide/16 v1, 0x0

    move v10, v3

    move-wide v3, v4

    move-wide/from16 v46, v12

    move v12, v6

    move-wide/from16 v5, v28

    move-wide/from16 v28, v46

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 881
    aget-object v2, v14, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 882
    aget-object v2, v14, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v12

    .line 885
    :goto_8
    aget-object v1, v14, v12

    aput-wide v28, v1, v9

    .line 886
    aput-wide v25, v1, v12

    add-int/lit8 v2, v12, -0x2

    move v13, v2

    move v1, v9

    :goto_9
    if-ltz v13, :cond_12

    move v2, v1

    move-wide/from16 v3, v28

    move-wide v5, v3

    :goto_a
    if-gt v2, v12, :cond_b

    .line 892
    aget-object v30, v14, v13

    aget-wide v31, v30, v2

    aget-object v30, v14, v2

    aget-wide v33, v30, v9

    mul-double v33, v33, v31

    add-double v3, v3, v33

    .line 893
    aget-wide v33, v30, v12

    mul-double v31, v31, v33

    add-double v5, v5, v31

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 895
    :cond_b
    aget-object v2, v14, v13

    aget-wide v30, v2, v13

    sub-double v30, v30, v23

    .line 897
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v32, v2, v13

    const-wide/16 v34, 0x0

    const-wide v36, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v32 .. v37}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v2

    if-gez v2, :cond_c

    move-wide/from16 v21, v3

    move-wide/from16 v17, v5

    move/from16 v40, v11

    move/from16 v35, v13

    move-object/from16 v34, v14

    move-wide/from16 v19, v30

    move/from16 v30, v9

    move/from16 v31, v10

    goto/16 :goto_d

    .line 903
    :cond_c
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v1, v13

    move-wide/from16 v32, v7

    move-wide/from16 v7, v28

    invoke-static {v0, v1, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_d

    neg-double v1, v3

    neg-double v3, v5

    move-object/from16 v0, p0

    move/from16 v35, v13

    move-object/from16 v34, v14

    move-wide/from16 v13, v17

    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v21

    .line 904
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 905
    aget-object v2, v34, v35

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v2, v30

    .line 906
    aget-object v2, v34, v35

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v12

    move/from16 v40, v11

    move/from16 v41, v12

    move-wide/from16 v5, v19

    goto/16 :goto_b

    :cond_d
    move-object/from16 v0, p0

    move/from16 v35, v13

    move-object/from16 v34, v14

    move-wide/from16 v13, v17

    move-wide/from16 v17, v30

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v21

    .line 909
    aget-object v1, v34, v35

    add-int/lit8 v21, v35, 0x1

    aget-wide v36, v1, v21

    .line 910
    aget-object v1, v34, v21

    aget-wide v38, v1, v35

    .line 911
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v7, v1, v35

    sub-double v1, v7, v23

    sub-double v40, v7, v23

    mul-double v1, v1, v40

    move-wide/from16 v40, v1

    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v42, v1, v35

    mul-double v42, v42, v42

    add-double v1, v40, v42

    mul-double v40, v32, v32

    sub-double v1, v1, v40

    sub-double v7, v7, v23

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v40

    mul-double v7, v7, v32

    move/from16 v40, v11

    move/from16 v41, v12

    const-wide/16 v11, 0x0

    .line 914
    invoke-static {v1, v2, v11, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-static {v7, v8, v11, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 915
    sget-wide v1, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v1, v1, v15

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    mul-double v1, v1, v28

    :cond_e
    mul-double v28, v36, v9

    mul-double v42, v19, v3

    sub-double v28, v28, v42

    mul-double v42, v32, v5

    add-double v28, v28, v42

    mul-double v42, v36, v13

    mul-double v44, v19, v5

    sub-double v42, v42, v44

    mul-double v44, v32, v3

    sub-double v42, v42, v44

    move-wide v11, v5

    move-wide v5, v1

    move-wide/from16 v1, v28

    move-wide/from16 v28, v13

    move-wide v13, v11

    move-wide v11, v3

    move-wide/from16 v3, v42

    .line 919
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 921
    aget-object v0, v34, v35

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v0, v30

    .line 922
    aget-object v0, v34, v35

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v1

    aput-wide v1, v0, v41

    .line 924
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_f

    .line 925
    aget-object v0, v34, v21

    neg-double v1, v11

    aget-object v3, v34, v35

    aget-wide v4, v3, v30

    mul-double v4, v4, v17

    sub-double/2addr v1, v4

    aget-wide v4, v3, v41

    mul-double v7, v32, v4

    add-double/2addr v1, v7

    div-double v1, v1, v36

    aput-wide v1, v0, v30

    neg-double v1, v13

    .line 927
    aget-wide v4, v3, v41

    mul-double v4, v4, v17

    sub-double/2addr v1, v4

    aget-wide v4, v3, v30

    mul-double v7, v32, v4

    sub-double/2addr v1, v7

    div-double v1, v1, v36

    aput-wide v1, v0, v41

    move-object/from16 v0, p0

    move-wide/from16 v5, v19

    move-wide/from16 v13, v28

    move-wide/from16 v7, v32

    goto :goto_b

    :cond_f
    neg-double v0, v9

    .line 930
    aget-object v2, v34, v35

    aget-wide v3, v2, v30

    mul-double v3, v3, v38

    sub-double/2addr v0, v3

    move-wide/from16 v13, v28

    neg-double v3, v13

    aget-wide v5, v2, v41

    mul-double v38, v38, v5

    sub-double v3, v3, v38

    move-wide v1, v0

    move-wide/from16 v5, v19

    move-wide/from16 v7, v32

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 932
    aget-object v2, v34, v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v2, v30

    .line 933
    aget-object v2, v34, v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v41

    .line 938
    :goto_b
    aget-object v1, v34, v35

    aget-wide v2, v1, v30

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-object v3, v34, v35

    aget-wide v11, v3, v41

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 940
    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v3, v3, v1

    mul-double v3, v3, v1

    cmpl-double v11, v3, v25

    if-lez v11, :cond_10

    move/from16 v3, v35

    move/from16 v12, v41

    :goto_c
    if-gt v3, v12, :cond_11

    .line 942
    aget-object v4, v34, v3

    aget-wide v17, v4, v30

    div-double v17, v17, v1

    aput-wide v17, v4, v30

    .line 943
    aget-wide v17, v4, v12

    div-double v17, v17, v1

    aput-wide v17, v4, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_10
    move/from16 v12, v41

    :cond_11
    move-wide/from16 v19, v5

    move-wide/from16 v21, v9

    move-wide/from16 v17, v13

    move/from16 v1, v35

    :goto_d
    add-int/lit8 v13, v35, -0x1

    move/from16 v9, v30

    move/from16 v10, v31

    move-object/from16 v14, v34

    move/from16 v11, v40

    const-wide/16 v28, 0x0

    goto/16 :goto_9

    :cond_12
    move/from16 v31, v10

    move/from16 v40, v11

    move-object/from16 v34, v14

    move-wide/from16 v13, v17

    move-wide/from16 v5, v19

    move-wide/from16 v9, v21

    goto :goto_e

    :cond_13
    move/from16 v31, v1

    move v12, v2

    move/from16 v40, v11

    move-object/from16 v34, v14

    :goto_e
    add-int/lit8 v2, v12, -0x1

    move-object/from16 v10, v27

    move/from16 v1, v31

    move-object/from16 v9, v34

    move/from16 v11, v40

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_14
    move/from16 v31, v1

    move-object/from16 v34, v9

    move-object/from16 v27, v10

    move/from16 v40, v11

    :goto_f
    if-ltz v1, :cond_17

    move/from16 v3, v31

    const/4 v2, 0x0

    :goto_10
    if-gt v2, v3, :cond_16

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    .line 955
    :goto_11
    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_15

    .line 956
    aget-object v5, v27, v2

    aget-wide v9, v5, v4

    aget-object v5, v34, v4

    aget-wide v11, v5, v1

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 958
    :cond_15
    aget-object v4, v27, v2

    aput-wide v7, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v1, -0x1

    move/from16 v31, v3

    goto :goto_f

    :cond_17
    move/from16 v1, v40

    .line 962
    new-array v2, v1, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 963
    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_19

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_18

    .line 966
    aget-object v5, v27, v4

    aget-wide v6, v5, v3

    aput-wide v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 968
    :cond_18
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_19
    return-void

    .line 812
    :cond_1a
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method private transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;
    .locals 17

    move-object/from16 v0, p0

    .line 751
    new-instance v1, Lorg/apache/commons/math3/linear/SchurTransformer;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/SchurTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 752
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 754
    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 755
    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    const/4 v3, 0x0

    .line 757
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 758
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, v2, v4

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x0

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 762
    :cond_0
    aget-object v5, v2, v4

    aget-wide v6, v5, v4

    .line 763
    aget-object v8, v2, v3

    aget-wide v9, v8, v3

    sub-double/2addr v9, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v11

    mul-double v11, v9, v9

    .line 764
    aget-wide v13, v5, v3

    aget-wide v15, v8, v4

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 765
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-double/2addr v6, v9

    aput-wide v6, v5, v3

    .line 766
    iget-object v8, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aput-wide v11, v8, v3

    .line 767
    aput-wide v6, v5, v4

    neg-double v5, v11

    .line 768
    aput-wide v5, v8, v4

    move v3, v4

    goto :goto_2

    .line 760
    :cond_1
    :goto_1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-object v5, v2, v3

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    .line 582
    new-instance v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 583
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getMainDiagonalRef()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 584
    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getSecondaryDiagonalRef()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    return-void
.end method


# virtual methods
.method public getD()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 228
    aget-wide v3, v1, v0

    const-wide/16 v5, 0x0

    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v3, v0

    invoke-interface {v1, v0, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    goto :goto_1

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v3, v0

    invoke-interface {v1, v0, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getDeterminant()D
    .locals 7

    .line 358
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    mul-double v2, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public getImagEigenvalue(I)D
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getRealEigenvalue(I)D
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->hasComplexEigenvalues()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V

    return-object v0

    .line 407
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 375
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 380
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 381
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    if-lez v2, :cond_0

    .line 385
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0

    .line 387
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 391
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 376
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 201
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 203
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 252
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public hasComplexEigenvalues()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 272
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 273
    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
