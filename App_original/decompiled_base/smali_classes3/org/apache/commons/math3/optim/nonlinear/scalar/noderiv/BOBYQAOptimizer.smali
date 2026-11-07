.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "BOBYQAOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 225
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 226
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 227
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private altmov(ID)[D
    .locals 52

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1258
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1260
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 1261
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1263
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1264
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1266
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1267
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v9, v3, :cond_0

    .line 1270
    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    sub-int v9, v3, v2

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_2

    .line 1273
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v8, v3, :cond_1

    .line 1275
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v17

    const/16 v19, 0x1

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v8, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    mul-double v20, v20, v14

    move-wide/from16 v22, v10

    add-double v10, v17, v20

    invoke-virtual {v5, v8, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v10, v22

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    move-wide/from16 v22, v10

    const/16 v19, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v22, v10

    const/16 v16, 0x0

    const/16 v19, 0x1

    .line 1278
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v8, v10

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_3

    .line 1284
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v17, v10

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v4, v14, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v10, v17

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v10

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_6

    move-wide/from16 v14, v22

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v2, :cond_4

    move-wide/from16 v20, v8

    .line 1289
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    move-wide/from16 v24, v8

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v24

    add-double/2addr v14, v8

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v8, v20

    goto :goto_5

    :cond_4
    move-wide/from16 v20, v8

    .line 1291
    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v14, v14, v8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v2, :cond_5

    .line 1293
    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v10, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v26

    mul-double v26, v26, v14

    move v11, v10

    add-double v9, v24, v26

    invoke-virtual {v4, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v8, v8, 0x1

    move v10, v11

    goto :goto_6

    :cond_5
    move v11, v10

    add-int/lit8 v10, v11, 0x1

    move-wide/from16 v8, v20

    goto :goto_4

    :cond_6
    move-wide/from16 v20, v8

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v24, v8

    move-wide/from16 v28, v12

    move-wide/from16 v14, v22

    move-wide/from16 v26, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v8, v3, :cond_15

    .line 1309
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v8, v13, :cond_7

    move-object/from16 v38, v6

    move-wide/from16 v34, v14

    move-object v15, v5

    goto/16 :goto_12

    :cond_7
    move-wide/from16 v24, v22

    move-wide/from16 v30, v24

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v2, :cond_8

    .line 1315
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v8, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    move-wide/from16 v34, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v34, v11

    .line 1316
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v34, v34, v11

    add-double v30, v30, v34

    mul-double v11, v11, v11

    add-double v24, v24, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1319
    :cond_8
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, p2, v11

    move-wide/from16 v34, v14

    neg-double v13, v11

    move-object v15, v5

    move-object/from16 v38, v6

    move-wide/from16 v36, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 1323
    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    move-wide/from16 v13, v36

    const/16 v39, 0x0

    move-wide/from16 v36, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    if-ge v11, v2, :cond_e

    move/from16 v40, v12

    .line 1328
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v8, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v41

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    sub-double v41, v41, v43

    cmpl-double v12, v41, v22

    if-lez v12, :cond_b

    mul-double v43, v13, v41

    .line 1330
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    sub-double v45, v45, v47

    cmpg-double v12, v43, v45

    if-gez v12, :cond_9

    .line 1331
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    sub-double v12, v12, v43

    div-double v13, v12, v41

    neg-int v12, v11

    add-int/lit8 v12, v12, -0x1

    goto :goto_a

    :cond_9
    move/from16 v12, v40

    :goto_a
    mul-double v43, v36, v41

    move/from16 v40, v12

    .line 1334
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    sub-double v45, v45, v47

    cmpl-double v12, v43, v45

    if-lez v12, :cond_a

    .line 1336
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    sub-double v36, v36, v43

    move-wide/from16 v43, v13

    div-double v12, v36, v41

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    add-int/lit8 v39, v11, 0x1

    :goto_b
    move-wide/from16 v36, v12

    move/from16 v12, v40

    move-wide/from16 v13, v43

    goto :goto_e

    :cond_a
    move-wide/from16 v43, v13

    goto :goto_d

    :cond_b
    cmpg-double v12, v41, v22

    if-gez v12, :cond_d

    mul-double v43, v13, v41

    .line 1341
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    sub-double v45, v45, v47

    cmpl-double v12, v43, v45

    if-lez v12, :cond_c

    .line 1342
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    sub-double v12, v12, v43

    div-double v13, v12, v41

    add-int/lit8 v12, v11, 0x1

    goto :goto_c

    :cond_c
    move/from16 v12, v40

    :goto_c
    mul-double v43, v36, v41

    move/from16 v40, v12

    .line 1345
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    sub-double v45, v45, v47

    cmpg-double v12, v43, v45

    if-gez v12, :cond_a

    .line 1347
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    sub-double v36, v36, v43

    move-wide/from16 v43, v13

    div-double v12, v36, v41

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    neg-int v14, v11

    add-int/lit8 v39, v14, -0x1

    goto :goto_b

    :cond_d
    :goto_d
    move/from16 v12, v40

    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    :cond_e
    move/from16 v40, v12

    if-ne v8, v1, :cond_10

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v5, v30, v32

    mul-double v11, v13, v5

    sub-double v41, v30, v11

    mul-double v41, v41, v13

    mul-double v43, v36, v5

    sub-double v45, v30, v43

    mul-double v45, v45, v36

    .line 1364
    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v47

    invoke-static/range {v41 .. v42}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v49

    cmpl-double v51, v47, v49

    if-lez v51, :cond_f

    move-wide/from16 v13, v36

    move-wide/from16 v41, v45

    goto :goto_f

    :cond_f
    move/from16 v39, v40

    :goto_f
    mul-double v30, v30, v17

    sub-double v11, v30, v11

    sub-double v36, v30, v43

    mul-double v11, v11, v36

    cmpg-double v36, v11, v22

    if-gez v36, :cond_13

    mul-double v11, v30, v30

    div-double/2addr v11, v5

    .line 1374
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v41 .. v42}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v43

    cmpl-double v40, v36, v43

    if-lez v40, :cond_13

    div-double v13, v30, v5

    move-wide/from16 v41, v11

    const/16 v39, 0x0

    goto :goto_11

    :cond_10
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v11, v32, v13

    mul-double v11, v11, v13

    sub-double v5, v32, v36

    mul-double v5, v5, v36

    .line 1386
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v43

    cmpl-double v45, v41, v43

    if-lez v45, :cond_11

    move-wide v11, v5

    move-wide/from16 v13, v36

    goto :goto_10

    :cond_11
    move/from16 v39, v40

    :goto_10
    cmpl-double v5, v36, v17

    if-lez v5, :cond_12

    .line 1391
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide/high16 v36, 0x3fd0000000000000L    # 0.25

    cmpg-double v40, v5, v36

    if-gez v40, :cond_12

    move-wide/from16 v13, v17

    move-wide/from16 v11, v36

    const/16 v39, 0x0

    :cond_12
    mul-double v41, v11, v30

    :cond_13
    :goto_11
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v11, v32, v13

    mul-double v11, v11, v13

    mul-double v11, v11, v24

    mul-double v41, v41, v41

    mul-double v5, v28, v11

    mul-double v5, v5, v11

    add-double v5, v41, v5

    mul-double v41, v41, v5

    cmpl-double v5, v41, v34

    if-lez v5, :cond_14

    move v9, v8

    move-wide/from16 v24, v13

    move-wide/from16 v26, v24

    move/from16 v10, v39

    move-wide/from16 v34, v41

    goto :goto_12

    :cond_14
    move-wide/from16 v24, v13

    :goto_12
    add-int/lit8 v8, v8, 0x1

    move-object v5, v15

    move-wide/from16 v14, v34

    move-object/from16 v6, v38

    goto/16 :goto_7

    :cond_15
    move-object v15, v5

    move-object/from16 v38, v6

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_16

    .line 1414
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v9, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double v11, v11, v26

    add-double/2addr v5, v11

    .line 1415
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-virtual {v8, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_16
    if-gez v10, :cond_17

    .line 1419
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-int v5, v10

    add-int/lit8 v5, v5, -0x1

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_17
    if-lez v10, :cond_18

    .line 1422
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v10, v10, -0x1

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v10, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_18
    add-double v5, p2, p2

    move-wide/from16 v10, v22

    move-wide/from16 v8, v24

    const/4 v1, 0x0

    :goto_14
    move-wide/from16 v13, v22

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v2, :cond_1b

    move-wide/from16 v24, v8

    .line 1437
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v13

    move-wide/from16 v13, v22

    move-object/from16 v10, v38

    .line 1438
    invoke-virtual {v10, v12, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1439
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v22

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    move-wide/from16 v34, v13

    sub-double v13, v22, v30

    invoke-static {v13, v14, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    cmpl-double v11, v13, v34

    if-gtz v11, :cond_1a

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v22

    sub-double v13, v13, v22

    invoke-static {v13, v14, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    cmpg-double v11, v13, v34

    if-gez v11, :cond_19

    goto :goto_16

    :cond_19
    move-wide/from16 v13, v28

    goto :goto_17

    .line 1441
    :cond_1a
    :goto_16
    invoke-virtual {v10, v12, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v8, v8, v8

    add-double v13, v28, v8

    :goto_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v38, v10

    move-wide/from16 v8, v24

    move-wide/from16 v10, v26

    const-wide/16 v22, 0x0

    goto :goto_15

    :cond_1b
    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v13

    move-object/from16 v10, v38

    const/4 v8, 0x2

    const-wide/16 v22, 0x0

    cmpl-double v9, v28, v22

    if-nez v9, :cond_1c

    .line 1447
    new-array v1, v8, [D

    aput-wide v20, v1, v16

    aput-wide v22, v1, v19

    return-object v1

    :cond_1c
    mul-double v11, p2, p2

    sub-double v11, v11, v22

    cmpl-double v9, v11, v22

    if-lez v9, :cond_21

    div-double v11, v11, v28

    .line 1453
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v2, :cond_20

    .line 1456
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpl-double v24, v13, v5

    if-nez v24, :cond_1f

    .line 1457
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    mul-double v24, v24, v11

    sub-double v13, v13, v24

    .line 1458
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    cmpg-double v8, v13, v24

    if-gtz v8, :cond_1d

    .line 1459
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    sub-double v13, v13, v24

    invoke-virtual {v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1461
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_19

    .line 1463
    :cond_1d
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    cmpl-double v8, v13, v24

    if-ltz v8, :cond_1e

    .line 1464
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    sub-double v13, v13, v24

    invoke-virtual {v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1466
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_19

    .line 1470
    :cond_1e
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    :cond_1f
    :goto_19
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x2

    goto :goto_18

    :cond_20
    move-wide v8, v11

    goto :goto_1a

    :cond_21
    move-wide/from16 v8, v24

    :goto_1a
    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_1b
    if-ge v11, v2, :cond_25

    .line 1482
    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    .line 1483
    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    cmpl-double v12, v28, v5

    if-nez v12, :cond_22

    move-wide/from16 v28, v5

    neg-double v5, v8

    mul-double v5, v5, v24

    .line 1484
    invoke-virtual {v10, v11, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1485
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    move-wide/from16 v36, v8

    add-double v8, v30, v34

    invoke-static {v5, v6, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    .line 1487
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v30, v13

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-static {v12, v13, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-virtual {v8, v11, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v22, 0x0

    goto :goto_1c

    :cond_22
    move-wide/from16 v28, v5

    move-wide/from16 v36, v8

    move-wide/from16 v30, v13

    .line 1488
    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    const-wide/16 v22, 0x0

    cmpl-double v8, v5, v22

    if-nez v8, :cond_23

    .line 1489
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1c

    :cond_23
    cmpl-double v5, v24, v22

    if-lez v5, :cond_24

    .line 1491
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1c

    .line 1493
    :cond_24
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1495
    :goto_1c
    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v24, v24, v5

    add-double v13, v30, v24

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v5, v28

    move-wide/from16 v8, v36

    goto/16 :goto_1b

    :cond_25
    move-wide/from16 v28, v5

    move-wide/from16 v36, v8

    move-wide/from16 v30, v13

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_27

    move-wide/from16 v8, v22

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v2, :cond_26

    .line 1507
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    mul-double v11, v11, v24

    add-double/2addr v8, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1509
    :cond_26
    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v8

    mul-double v11, v11, v8

    add-double/2addr v13, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_27
    const/4 v5, 0x1

    if-ne v1, v5, :cond_28

    neg-double v13, v13

    :cond_28
    move-wide/from16 v5, v30

    neg-double v8, v5

    cmpl-double v11, v13, v8

    if-lez v11, :cond_2a

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 1514
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v32

    mul-double v11, v11, v8

    cmpg-double v24, v13, v11

    if-gez v24, :cond_2b

    div-double/2addr v8, v13

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v2, :cond_29

    .line 1518
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    mul-double v24, v24, v8

    add-double v12, v12, v24

    .line 1519
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v24, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v30, v5

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v34, v8

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-virtual {v14, v11, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v24

    move-wide/from16 v5, v30

    move-wide/from16 v8, v34

    goto :goto_1f

    :cond_29
    move/from16 v24, v1

    move-wide/from16 v30, v5

    move-wide/from16 v34, v8

    mul-double v13, v30, v17

    mul-double v13, v13, v34

    goto :goto_20

    :cond_2a
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    :cond_2b
    move/from16 v24, v1

    move-wide/from16 v30, v5

    mul-double v13, v13, v17

    add-double v13, v30, v13

    :goto_20
    mul-double v13, v13, v13

    if-nez v24, :cond_2d

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v2, :cond_2c

    .line 1537
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1538
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v7, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2c
    move-object/from16 v38, v10

    move-wide v10, v13

    move-wide/from16 v5, v28

    move-wide/from16 v8, v36

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto/16 :goto_14

    :cond_2d
    cmpl-double v1, v26, v13

    if-lez v1, :cond_2f

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v2, :cond_2e

    .line 1548
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2e
    move-wide/from16 v10, v26

    goto :goto_23

    :cond_2f
    move-wide v10, v13

    :goto_23
    const/4 v1, 0x2

    .line 1553
    new-array v1, v1, [D

    aput-wide v20, v1, v16

    const/16 v19, 0x1

    aput-wide v10, v1, v19

    return-object v1
.end method

.method private bobyqa([D[D)D
    .locals 11

    .line 285
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 297
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v3, v2, v1

    .line 298
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 299
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 300
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1

    .line 301
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v2, v5, v9

    if-ltz v2, :cond_0

    .line 302
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 303
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 304
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 306
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p1, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 307
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 309
    aget-wide v2, p2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 310
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 312
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v2, v5, v7

    if-gtz v2, :cond_3

    .line 313
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpg-double v2, v5, v9

    if-gtz v2, :cond_2

    .line 314
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 315
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 316
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 318
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 320
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 321
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v4

    .line 322
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 323
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 330
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide p1

    return-wide p1
.end method

.method private bobyqb([D[D)D
    .locals 97

    move-object/from16 v0, p0

    .line 374
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 376
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v8

    .line 377
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/lit8 v1, v8, 0x1

    sub-int v10, v9, v1

    mul-int v1, v1, v8

    .line 380
    div-int/lit8 v11, v1, 0x2

    .line 382
    new-instance v12, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v12, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 383
    new-instance v13, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 384
    new-instance v14, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v14, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v15, 0x0

    .line 403
    iput v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 405
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->prelim([D[D)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    .line 408
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v16, 0x0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 410
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x0

    .line 413
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 421
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    .line 422
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    const/16 v18, 0x0

    const-wide/high16 v19, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v22, v4

    move-wide/from16 v29, v6

    move/from16 v40, v11

    move-object/from16 v41, v12

    move-wide/from16 v11, v16

    move-wide/from16 v31, v11

    move-wide/from16 v34, v31

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v42, v38

    move-wide/from16 v44, v42

    move-wide/from16 v46, v44

    move-wide/from16 v48, v46

    move-wide/from16 v24, v19

    move-wide/from16 v26, v24

    const/16 v5, 0x14

    const/16 v28, 0x0

    const/16 v33, 0x0

    const/16 v50, 0x0

    move/from16 v19, v1

    move-wide/from16 v20, v2

    move-wide/from16 v1, v29

    move-wide/from16 v6, v48

    move-wide/from16 v3, v26

    :goto_1
    const-wide/high16 v51, 0x4024000000000000L    # 10.0

    const/16 v15, 0x3c

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v62, v1

    const/16 v2, 0x14

    if-eq v5, v2, :cond_63

    if-eq v5, v15, :cond_62

    const/16 v2, 0x5a

    if-eq v5, v2, :cond_61

    const-wide/high16 v64, 0x3ff8000000000000L    # 1.5

    const/16 v67, 0x3c

    const/16 v15, 0x2d0

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x168

    const-wide v70, 0x3fb999999999999aL    # 0.1

    const/16 v2, 0xd2

    if-eq v5, v2, :cond_7

    const/16 v2, 0xe6

    if-eq v5, v2, :cond_6

    if-eq v5, v1, :cond_5

    const/16 v2, 0x28a

    if-eq v5, v2, :cond_4

    const/16 v2, 0x2a8

    if-eq v5, v2, :cond_2

    if-ne v5, v15, :cond_1

    move-object v5, v0

    const/16 v72, 0x2d0

    goto/16 :goto_45

    .line 1215
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bobyqb"

    aput-object v4, v3, v18

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    move-object v5, v0

    move-wide/from16 v73, v6

    move-wide/from16 v6, v29

    move/from16 v15, v33

    move-wide/from16 v1, v62

    const/16 v72, 0x2d0

    move-wide/from16 v29, v3

    move-wide v3, v11

    move/from16 v33, v28

    move/from16 v12, v40

    move-object/from16 v11, v41

    const/16 v28, 0x168

    :cond_3
    const/16 v56, 0x2a8

    goto/16 :goto_42

    :cond_4
    move-object v5, v0

    move-wide/from16 v73, v6

    move-wide/from16 v91, v11

    move/from16 v15, v33

    move/from16 v12, v40

    move-object/from16 v11, v41

    const/16 v28, 0x168

    const/16 v72, 0x2d0

    :goto_2
    move-wide/from16 v1, v62

    const/16 v57, 0x28a

    goto/16 :goto_3c

    :cond_5
    move-wide/from16 v75, v3

    move-wide/from16 v73, v6

    move-wide/from16 v77, v11

    move/from16 v2, v28

    move/from16 v11, v33

    const/16 v28, 0x168

    const/16 v72, 0x2d0

    goto/16 :goto_13

    :cond_6
    move/from16 v2, v28

    const/16 v28, 0x168

    const/16 v58, 0xe6

    const/16 v72, 0x2d0

    goto :goto_4

    :cond_7
    const/16 v54, 0xd2

    .line 658
    invoke-static/range {v54 .. v54}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v2, v28

    .line 670
    invoke-direct {v0, v2, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v3

    .line 671
    aget-wide v4, v3, v18

    const/16 v66, 0x1

    .line 672
    aget-wide v24, v3, v66

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_8

    const/16 v28, 0x168

    .line 675
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/16 v72, 0x2d0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    move-wide/from16 v73, v4

    sub-double v4, v26, v44

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v73

    const/16 v1, 0x168

    const/16 v15, 0x2d0

    goto :goto_3

    :cond_8
    move-wide/from16 v73, v4

    move-wide/from16 v26, v73

    const/16 v28, 0x168

    const/16 v72, 0x2d0

    const/16 v58, 0xe6

    .line 684
    :goto_4
    invoke-static/range {v58 .. v58}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_a

    move-wide/from16 v73, v6

    move-wide/from16 v3, v16

    move-wide v5, v3

    move-wide/from16 v44, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_9

    .line 690
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v75

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v75, v75, v77

    add-double v3, v3, v75

    .line 691
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v75

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v75, v75, v77

    add-double v44, v44, v75

    .line 692
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v75

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v75, v75, v77

    add-double v5, v5, v75

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    mul-double v75, v3, v60

    add-double v75, v75, v44

    move-wide/from16 v77, v11

    mul-double v11, v3, v75

    .line 694
    invoke-virtual {v14, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 695
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 696
    invoke-virtual {v13, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v73

    move-wide/from16 v11, v77

    goto :goto_5

    :cond_a
    move-wide/from16 v73, v6

    move-wide/from16 v77, v11

    move-wide/from16 v3, v16

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v10, :cond_d

    move-wide/from16 v5, v16

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v9, :cond_b

    .line 702
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v7, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    invoke-virtual {v14, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    mul-double v11, v11, v44

    add-double/2addr v5, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    mul-double v11, v5, v5

    sub-double/2addr v3, v11

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v9, :cond_c

    .line 706
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v7, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v75

    mul-double v75, v75, v5

    move-wide/from16 v79, v3

    add-double v3, v44, v75

    invoke-virtual {v11, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v79

    goto :goto_9

    :cond_c
    move-wide/from16 v79, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    move-wide/from16 v5, v16

    move-wide v11, v5

    move-wide/from16 v44, v11

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_10

    .line 714
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v75, v75, v75

    add-double v5, v5, v75

    move-wide/from16 v75, v16

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v9, :cond_e

    .line 718
    invoke-virtual {v14, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v7, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v81

    mul-double v79, v79, v81

    add-double v75, v75, v79

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 720
    :cond_e
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v79, v79, v75

    add-double v44, v44, v79

    add-int v7, v9, v1

    move-wide/from16 v79, v3

    move-wide/from16 v3, v75

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v8, :cond_f

    move-wide/from16 v75, v5

    .line 723
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v7, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    move-wide/from16 v81, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v5, v5, v81

    add-double/2addr v3, v5

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v75

    goto :goto_c

    :cond_f
    move-wide/from16 v75, v5

    .line 725
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 726
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double v44, v44, v3

    .line 727
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v11, v3

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v75

    move-wide/from16 v3, v79

    goto :goto_a

    :cond_10
    move-wide/from16 v79, v3

    mul-double v3, v11, v11

    add-double v75, v20, v11

    add-double v75, v75, v11

    mul-double v11, v5, v60

    add-double v75, v75, v11

    mul-double v75, v75, v5

    add-double v3, v3, v75

    add-double v3, v3, v79

    sub-double v44, v3, v44

    .line 734
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    add-double v11, v11, v68

    invoke-virtual {v1, v3, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v11, v33

    if-nez v11, :cond_13

    .line 743
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v3

    mul-double v42, v26, v44

    add-double v42, v3, v42

    cmpg-double v1, v42, v24

    if-gez v1, :cond_12

    cmpl-double v1, v24, v16

    if-lez v1, :cond_12

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v8, :cond_11

    .line 747
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v75, v5

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 748
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v75

    goto :goto_d

    :cond_11
    move-wide/from16 v75, v5

    move/from16 v28, v2

    move/from16 v33, v11

    move-wide/from16 v24, v16

    move-wide/from16 v1, v62

    move-wide/from16 v6, v73

    move-wide/from16 v3, v75

    move-wide/from16 v11, v77

    const/16 v5, 0xe6

    goto/16 :goto_1

    :cond_12
    move-wide/from16 v75, v5

    goto/16 :goto_13

    :cond_13
    move-wide/from16 v75, v5

    mul-double v1, v62, v62

    move-wide/from16 v3, v16

    move-wide v5, v3

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v9, :cond_18

    .line 765
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v12, v15, :cond_14

    move-wide/from16 v79, v1

    goto/16 :goto_12

    :cond_14
    move-wide/from16 v31, v16

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v10, :cond_15

    move-wide/from16 v79, v1

    .line 771
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v1

    add-double v31, v31, v1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v1, v79

    goto :goto_f

    :cond_15
    move-wide/from16 v79, v1

    .line 775
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double v31, v31, v44

    mul-double v1, v1, v1

    add-double v31, v31, v1

    move-wide/from16 v1, v16

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v8, :cond_16

    move-wide/from16 v48, v1

    .line 780
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    move-wide/from16 v81, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    sub-double v1, v81, v1

    mul-double v1, v1, v1

    add-double v1, v48, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_16
    move-wide/from16 v48, v1

    div-double v1, v48, v79

    mul-double v1, v1, v1

    move-wide/from16 v81, v3

    move-wide/from16 v3, v68

    .line 786
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    mul-double v3, v1, v31

    cmpl-double v15, v3, v81

    if-lez v15, :cond_17

    move v7, v12

    move-wide/from16 v42, v31

    goto :goto_11

    :cond_17
    move-wide/from16 v3, v81

    .line 794
    :goto_11
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    mul-double v31, v31, v31

    mul-double v1, v1, v31

    .line 795
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v5, v1

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v1, v79

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    goto :goto_e

    :cond_18
    move v2, v7

    .line 807
    :goto_13
    invoke-static/range {v28 .. v28}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v8, :cond_1b

    .line 811
    aget-wide v3, p1, v1

    .line 812
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    add-double v5, v5, v31

    .line 813
    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 814
    aget-wide v5, p2, v1

    .line 815
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    invoke-virtual {v7, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 816
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-nez v7, :cond_19

    .line 817
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v4, p1, v1

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 819
    :cond_19
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1a

    .line 820
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v4, p2, v1

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 824
    :cond_1b
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v3

    .line 826
    iget-boolean v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-nez v1, :cond_1c

    neg-double v3, v3

    :cond_1c
    move-wide v6, v3

    const/4 v1, -0x1

    if-ne v11, v1, :cond_1d

    move/from16 v28, v2

    move-wide/from16 v22, v6

    move-wide/from16 v31, v22

    move/from16 v33, v11

    move-wide/from16 v1, v62

    move-wide/from16 v6, v73

    move-wide/from16 v3, v75

    move-wide/from16 v11, v77

    const/16 v5, 0x2d0

    goto/16 :goto_1

    .line 836
    :cond_1d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    move-wide/from16 v3, v16

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v1, v8, :cond_20

    .line 840
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v38, v38, v79

    add-double v3, v3, v38

    const/4 v12, 0x0

    :goto_16
    if-gt v12, v1, :cond_1f

    .line 842
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v38, v38, v79

    if-ne v12, v1, :cond_1e

    mul-double v38, v38, v60

    .line 846
    :cond_1e
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v79, v79, v38

    add-double v3, v3, v79

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_20
    move-wide/from16 v38, v3

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v9, :cond_21

    .line 852
    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v3

    .line 854
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v79, v79, v60

    mul-double v79, v79, v3

    add-double v38, v38, v79

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_21
    sub-double v3, v6, v31

    sub-double v79, v3, v38

    .line 859
    invoke-static/range {v79 .. v80}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v81

    cmpl-double v1, v77, v29

    if-lez v1, :cond_22

    .line 861
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    move/from16 v19, v1

    :cond_22
    const-wide/high16 v83, 0x4000000000000000L    # 2.0

    if-lez v11, :cond_2d

    cmpl-double v1, v38, v16

    if-gez v1, :cond_2c

    div-double v3, v3, v38

    move v5, v2

    mul-double v1, v62, v60

    cmpg-double v12, v3, v70

    if-gtz v12, :cond_23

    move v15, v11

    move-wide/from16 v11, v77

    .line 874
    invoke-static {v1, v2, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    :goto_18
    move-wide/from16 v46, v3

    goto :goto_19

    :cond_23
    move v15, v11

    move-wide/from16 v11, v77

    const-wide v46, 0x3fe6666666666666L    # 0.7

    cmpg-double v33, v3, v46

    if-gtz v33, :cond_24

    .line 877
    invoke-static {v1, v2, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_18

    :cond_24
    move-wide/from16 v46, v3

    mul-double v3, v11, v83

    .line 880
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    :goto_19
    mul-double v3, v29, v64

    cmpg-double v33, v1, v3

    if-gtz v33, :cond_25

    move-wide/from16 v1, v29

    :cond_25
    cmpg-double v3, v6, v31

    if-gez v3, :cond_2b

    mul-double v3, v1, v1

    move-wide/from16 v62, v1

    move-wide/from16 v85, v3

    move-wide/from16 v1, v16

    move-wide/from16 v87, v42

    move-wide/from16 v77, v48

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v48, v1

    :goto_1a
    if-ge v3, v9, :cond_29

    move/from16 v33, v4

    move-wide/from16 v77, v16

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v10, :cond_26

    move/from16 v54, v5

    .line 899
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v89

    mul-double v89, v89, v89

    add-double v77, v77, v89

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v54

    goto :goto_1b

    :cond_26
    move/from16 v54, v5

    .line 903
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v77, v77, v44

    mul-double v4, v4, v4

    add-double v77, v77, v4

    move-wide/from16 v89, v16

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v8, :cond_27

    .line 908
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v91

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v93

    sub-double v91, v91, v93

    mul-double v91, v91, v91

    add-double v89, v89, v91

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_27
    div-double v4, v89, v85

    mul-double v4, v4, v4

    move-wide/from16 v91, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 914
    invoke-static {v11, v12, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v68, v4, v77

    cmpl-double v58, v68, v48

    if-lez v58, :cond_28

    move/from16 v33, v3

    move-wide/from16 v48, v68

    move-wide/from16 v87, v77

    .line 922
    :cond_28
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v11

    mul-double v4, v4, v11

    .line 924
    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v33

    move/from16 v5, v54

    move-wide/from16 v77, v89

    move-wide/from16 v11, v91

    goto :goto_1a

    :cond_29
    move/from16 v33, v4

    move/from16 v54, v5

    move-wide/from16 v91, v11

    mul-double v1, v1, v60

    cmpg-double v3, v48, v1

    if-gtz v3, :cond_2a

    move-wide/from16 v3, v42

    move-wide/from16 v1, v44

    move/from16 v5, v54

    move-wide/from16 v48, v77

    goto :goto_1d

    :cond_2a
    move/from16 v5, v33

    move-wide/from16 v1, v44

    move-wide/from16 v48, v77

    move-wide/from16 v3, v87

    goto :goto_1d

    :cond_2b
    move-wide/from16 v62, v1

    move/from16 v54, v5

    move-wide/from16 v91, v11

    move-wide/from16 v3, v42

    move-wide/from16 v1, v44

    goto :goto_1d

    .line 868
    :cond_2c
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v18

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2d
    move/from16 v54, v2

    move v15, v11

    move-wide/from16 v91, v77

    move-wide/from16 v3, v42

    move-wide/from16 v1, v44

    move/from16 v5, v54

    .line 936
    :goto_1d
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->update(DDI)V

    move/from16 v42, v5

    move-object v5, v0

    move/from16 v0, v42

    move-wide/from16 v42, v3

    .line 939
    iget-object v3, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 940
    iget-object v11, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v44, v1

    move-wide/from16 v1, v16

    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v8, :cond_2f

    .line 942
    iget-object v11, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double v11, v11, v3

    move-wide/from16 v68, v3

    const/4 v3, 0x0

    :goto_1f
    if-gt v3, v1, :cond_2e

    .line 944
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    move/from16 v33, v1

    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v85

    mul-double v85, v85, v11

    move-wide/from16 v87, v11

    add-double v11, v77, v85

    invoke-virtual {v4, v2, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v33

    move-wide/from16 v11, v87

    goto :goto_1f

    :cond_2e
    move/from16 v33, v1

    add-int/lit8 v1, v33, 0x1

    move-wide/from16 v3, v68

    goto :goto_1e

    :cond_2f
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v10, :cond_31

    .line 949
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    mul-double v2, v2, v79

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v9, :cond_30

    .line 951
    iget-object v11, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v77, v77, v2

    move v12, v1

    move-wide/from16 v85, v2

    add-double v1, v68, v77

    invoke-virtual {v11, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move v1, v12

    move-wide/from16 v2, v85

    goto :goto_21

    :cond_30
    move v12, v1

    add-int/lit8 v1, v12, 0x1

    goto :goto_20

    .line 958
    :cond_31
    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v8, :cond_32

    .line 960
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v3, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 961
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    move-object/from16 v11, v41

    invoke-virtual {v11, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    move-object/from16 v11, v41

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v9, :cond_36

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v10, :cond_33

    .line 966
    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v68, v68, v77

    add-double v2, v2, v68

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_33
    const/4 v4, 0x0

    const-wide/16 v68, 0x0

    :goto_25
    if-ge v4, v8, :cond_34

    .line 970
    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v85

    mul-double v77, v77, v85

    add-double v68, v68, v77

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_34
    mul-double v2, v2, v68

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v8, :cond_35

    .line 974
    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v77, v77, v2

    move v12, v1

    move-wide/from16 v85, v2

    add-double v1, v68, v77

    invoke-virtual {v11, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move v1, v12

    move-wide/from16 v2, v85

    goto :goto_26

    :cond_35
    move v12, v1

    add-int/lit8 v1, v12, 0x1

    goto :goto_23

    :cond_36
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v8, :cond_37

    .line 978
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    mul-double v68, v68, v79

    add-double v3, v3, v68

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_37
    cmpg-double v1, v6, v31

    if-gez v1, :cond_3d

    .line 984
    iput v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_28
    if-ge v3, v8, :cond_3a

    .line 988
    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v33, v0

    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v20, v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    invoke-virtual {v12, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 990
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    mul-double v0, v0, v0

    add-double v1, v20, v0

    const/4 v0, 0x0

    :goto_29
    if-gt v0, v3, :cond_39

    if-ge v0, v3, :cond_38

    .line 994
    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    move-wide/from16 v68, v1

    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v77, v1

    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double v1, v1, v77

    add-double v1, v20, v1

    invoke-virtual {v12, v3, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2a

    :cond_38
    move-wide/from16 v68, v1

    .line 996
    :goto_2a
    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v77, v77, v79

    move v12, v3

    add-double v2, v20, v77

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    move v3, v12

    move-wide/from16 v1, v68

    goto :goto_29

    :cond_39
    move-wide/from16 v68, v1

    move v12, v3

    add-int/lit8 v3, v12, 0x1

    move/from16 v0, v33

    goto :goto_28

    :cond_3a
    move/from16 v33, v0

    move-wide/from16 v20, v1

    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v9, :cond_3e

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v8, :cond_3b

    .line 1003
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v68, v68, v77

    add-double v1, v1, v68

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1005
    :cond_3b
    iget-object v3, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v1, v1, v3

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v8, :cond_3c

    .line 1007
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v77, v77, v1

    move v12, v0

    move-wide/from16 v79, v1

    add-double v0, v68, v77

    invoke-virtual {v4, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move v0, v12

    move-wide/from16 v1, v79

    goto :goto_2d

    :cond_3c
    move v12, v0

    add-int/lit8 v0, v12, 0x1

    goto :goto_2b

    :cond_3d
    move/from16 v33, v0

    :cond_3e
    if-lez v15, :cond_4e

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v9, :cond_3f

    .line 1018
    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    sub-double v2, v2, v68

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v1, 0x0

    .line 1019
    invoke-virtual {v14, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3f
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v10, :cond_42

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v9, :cond_40

    .line 1024
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v68, v68, v77

    add-double v1, v1, v68

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_40
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v9, :cond_41

    .line 1027
    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v77, v77, v1

    move v4, v0

    move-wide/from16 v79, v1

    add-double v0, v68, v77

    invoke-virtual {v14, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    move-wide/from16 v1, v79

    goto :goto_31

    :cond_41
    move v4, v0

    add-int/lit8 v0, v4, 0x1

    goto :goto_2f

    :cond_42
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v9, :cond_44

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v8, :cond_43

    .line 1033
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v68, v68, v77

    add-double v1, v1, v68

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1035
    :cond_43
    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v13, v0, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1036
    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-virtual {v14, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_44
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v8, :cond_48

    move-wide/from16 v68, v0

    const-wide/16 v0, 0x0

    const/4 v12, 0x0

    :goto_35
    if-ge v12, v9, :cond_45

    move-wide/from16 v77, v2

    .line 1043
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v12, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    move-wide/from16 v79, v2

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v79

    move-wide/from16 v79, v2

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v12, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v85

    mul-double v2, v2, v85

    add-double v2, v79, v2

    add-double/2addr v0, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v77

    goto :goto_35

    :cond_45
    move-wide/from16 v77, v2

    .line 1046
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    cmpl-double v12, v2, v79

    if-nez v12, :cond_46

    .line 1049
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    move-wide/from16 v79, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double v2, v2, v2

    add-double v2, v68, v2

    .line 1052
    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v68

    :goto_36
    mul-double v68, v68, v68

    add-double v6, v77, v68

    goto :goto_37

    :cond_46
    move-wide/from16 v79, v6

    .line 1054
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v6, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v12, v2, v6

    if-nez v12, :cond_47

    .line 1057
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double v2, v2, v2

    add-double v2, v68, v2

    .line 1060
    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    goto :goto_36

    .line 1064
    :cond_47
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v2

    add-double v2, v68, v2

    mul-double v6, v0, v0

    add-double v6, v77, v6

    .line 1068
    :goto_37
    iget-object v12, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v68, v2

    add-int v2, v9, v4

    invoke-virtual {v12, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move-wide v2, v6

    move-wide/from16 v0, v68

    move-wide/from16 v6, v79

    goto/16 :goto_34

    :cond_48
    move-wide/from16 v68, v0

    move-wide/from16 v77, v2

    move-wide/from16 v79, v6

    add-int/lit8 v50, v50, 0x1

    mul-double v2, v77, v51

    cmpg-double v0, v68, v2

    if-gez v0, :cond_49

    const/4 v0, 0x0

    goto :goto_38

    :cond_49
    move/from16 v0, v50

    :goto_38
    const/4 v1, 0x3

    move/from16 v12, v40

    if-lt v0, v1, :cond_4d

    .line 1079
    invoke-static {v9, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_4d

    if-ge v2, v8, :cond_4a

    .line 1081
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v4, v9, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4a
    if-ge v2, v9, :cond_4b

    .line 1084
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4b
    if-ge v2, v12, :cond_4c

    .line 1087
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_39

    :cond_4d
    move/from16 v50, v0

    goto :goto_3a

    :cond_4e
    move-wide/from16 v79, v6

    move/from16 v12, v40

    :goto_3a
    if-nez v15, :cond_4f

    :goto_3b
    move-object v0, v5

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    move-wide/from16 v38, v36

    move-wide/from16 v1, v62

    move-wide/from16 v6, v73

    move-wide/from16 v3, v75

    move-wide/from16 v31, v79

    move-wide/from16 v11, v91

    const/16 v5, 0x3c

    const-wide/16 v16, 0x0

    move/from16 v33, v15

    move-wide/from16 v36, v34

    move-wide/from16 v34, v81

    goto/16 :goto_1

    :cond_4f
    mul-double v38, v38, v70

    add-double v31, v31, v38

    cmpg-double v0, v79, v31

    if-gtz v0, :cond_50

    goto :goto_3b

    :cond_50
    mul-double v83, v83, v62

    mul-double v51, v51, v29

    mul-double v0, v83, v83

    mul-double v2, v51, v51

    .line 1113
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v48

    move-wide/from16 v38, v36

    move-wide/from16 v3, v75

    move-wide/from16 v31, v79

    move-wide/from16 v36, v34

    move-wide/from16 v34, v81

    goto/16 :goto_2

    .line 1116
    :goto_3c
    invoke-static/range {v57 .. v57}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v0, -0x1

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v9, :cond_53

    const/4 v7, 0x0

    const-wide/16 v40, 0x0

    :goto_3e
    if-ge v7, v8, :cond_51

    move/from16 v33, v0

    .line 1122
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v51

    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v51, v51, v57

    mul-double v51, v51, v51

    add-double v40, v40, v51

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v33

    goto :goto_3e

    :cond_51
    move/from16 v33, v0

    cmpl-double v0, v40, v48

    if-lez v0, :cond_52

    move v0, v6

    move-wide/from16 v48, v40

    goto :goto_3f

    :cond_52
    move/from16 v0, v33

    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_53
    move/from16 v33, v0

    if-ltz v33, :cond_56

    .line 1138
    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const/4 v0, -0x1

    if-ne v15, v0, :cond_55

    mul-double v1, v1, v70

    mul-double v6, v3, v60

    .line 1141
    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v64, v64, v29

    cmpg-double v2, v0, v64

    if-gtz v2, :cond_54

    move-wide/from16 v1, v29

    goto :goto_40

    :cond_54
    move-wide v1, v0

    :cond_55
    :goto_40
    mul-double v3, v3, v70

    .line 1149
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    move-wide/from16 v6, v29

    .line 1150
    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    mul-double v28, v3, v3

    move-wide/from16 v16, v6

    move-wide v6, v3

    move-wide/from16 v3, v28

    move-wide/from16 v29, v16

    move-object v0, v5

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    move-wide/from16 v11, v91

    const/16 v5, 0x5a

    const-wide/16 v16, 0x0

    goto/16 :goto_44

    :cond_56
    move-wide/from16 v6, v29

    const/4 v0, -0x1

    if-ne v15, v0, :cond_57

    move-object v0, v5

    move-wide/from16 v29, v6

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    move-wide/from16 v6, v73

    move-wide/from16 v11, v91

    const/16 v5, 0x2a8

    const-wide/16 v16, 0x0

    :goto_41
    move/from16 v33, v15

    goto/16 :goto_1

    :cond_57
    const-wide/16 v16, 0x0

    cmpl-double v0, v46, v16

    if-lez v0, :cond_58

    move-object v0, v5

    move-wide/from16 v29, v6

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    move-wide/from16 v6, v73

    move-wide/from16 v11, v91

    const/16 v5, 0x3c

    goto :goto_41

    :cond_58
    move-wide/from16 v29, v3

    move-wide/from16 v3, v91

    .line 1160
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    cmpl-double v0, v40, v6

    if-lez v0, :cond_3

    move-object v0, v5

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    const/16 v5, 0x3c

    move-wide v11, v3

    move/from16 v33, v15

    move-wide/from16 v3, v29

    move-wide/from16 v29, v6

    move-wide/from16 v6, v73

    goto/16 :goto_1

    .line 1168
    :goto_42
    invoke-static/range {v56 .. v56}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v40, v1

    .line 1169
    iget-wide v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    cmpl-double v2, v6, v0

    if-lez v2, :cond_5b

    move-wide/from16 v51, v0

    mul-double v0, v6, v60

    div-double v46, v6, v51

    const-wide/high16 v40, 0x4030000000000000L    # 16.0

    cmpg-double v2, v46, v40

    if-gtz v2, :cond_59

    move-wide/from16 v77, v3

    move-wide/from16 v2, v51

    goto :goto_43

    :cond_59
    const-wide v40, 0x406f400000000000L    # 250.0

    cmpg-double v2, v46, v40

    if-gtz v2, :cond_5a

    .line 1175
    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    move-wide/from16 v77, v3

    iget-wide v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    mul-double v6, v6, v2

    move-wide v2, v6

    goto :goto_43

    :cond_5a
    move-wide/from16 v77, v3

    mul-double v2, v6, v70

    .line 1179
    :goto_43
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 1181
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v19

    move-wide/from16 v6, v29

    move-wide/from16 v29, v2

    move-wide v3, v6

    move-wide v1, v0

    move-object v0, v5

    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v28, v33

    move-wide/from16 v6, v73

    move-wide/from16 v11, v77

    const/16 v5, 0x3c

    :goto_44
    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_5b
    move-wide/from16 v77, v3

    const/4 v0, -0x1

    if-ne v15, v0, :cond_5c

    move-object v0, v5

    move-wide/from16 v3, v29

    move/from16 v28, v33

    move-wide/from16 v1, v40

    const/16 v5, 0x168

    move-wide/from16 v29, v6

    goto/16 :goto_67

    .line 1193
    :cond_5c
    :goto_45
    invoke-static/range {v72 .. v72}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1194
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    cmpg-double v2, v0, v22

    if-gtz v2, :cond_60

    const/4 v15, 0x0

    :goto_46
    if-ge v15, v8, :cond_5f

    .line 1198
    aget-wide v0, p1, v15

    .line 1199
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1200
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 1201
    aget-wide v2, p2, v15

    .line 1202
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-virtual {v4, v15, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1203
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5d

    .line 1204
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p1, v15

    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1206
    :cond_5d
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5e

    .line 1207
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p2, v15

    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_5e
    add-int/lit8 v15, v15, 0x1

    goto :goto_46

    .line 1210
    :cond_5f
    iget-object v0, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0

    :cond_60
    return-wide v31

    :cond_61
    move-wide/from16 v75, v3

    move-wide/from16 v73, v6

    move-wide/from16 v77, v11

    move/from16 v15, v33

    move/from16 v12, v40

    move-object/from16 v11, v41

    const/16 v54, 0xd2

    const/16 v58, 0xe6

    move-wide/from16 v64, v29

    move-wide/from16 v40, v34

    move-wide/from16 v3, v36

    move-wide/from16 v35, v38

    move-wide/from16 v33, v75

    const/16 v53, 0x14

    move/from16 v30, v28

    move-wide/from16 v28, v16

    move-object/from16 v16, v14

    :goto_47
    const/16 v55, 0x5a

    goto/16 :goto_55

    :cond_62
    move-object v5, v0

    move-wide/from16 v73, v6

    move/from16 v15, v33

    move/from16 v12, v40

    move-object/from16 v11, v41

    const/16 v54, 0xd2

    const/16 v56, 0x2a8

    const/16 v57, 0x28a

    const/16 v58, 0xe6

    const/16 v67, 0x3c

    move-wide/from16 v64, v29

    const/16 v53, 0x14

    move/from16 v30, v28

    goto/16 :goto_4e

    :cond_63
    move-object v5, v0

    move-wide/from16 v73, v6

    move/from16 v2, v28

    move-wide/from16 v6, v29

    move/from16 v15, v33

    move/from16 v12, v40

    move-object/from16 v11, v41

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/16 v53, 0x14

    const/16 v54, 0xd2

    const/16 v56, 0x2a8

    const/16 v57, 0x28a

    const/16 v58, 0xe6

    const/16 v67, 0x3c

    .line 443
    invoke-static/range {v53 .. v53}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 444
    iget v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v1, :cond_69

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_48
    if-ge v1, v8, :cond_66

    const/4 v0, 0x0

    :goto_49
    if-gt v0, v1, :cond_65

    if-ge v0, v1, :cond_64

    .line 449
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    move/from16 v30, v2

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v40, v40, v64

    move-wide/from16 v64, v6

    add-double v6, v28, v40

    invoke-virtual {v4, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4a

    :cond_64
    move/from16 v30, v2

    move-wide/from16 v64, v6

    .line 451
    :goto_4a
    iget-object v2, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v28, v28, v40

    add-double v6, v6, v28

    invoke-virtual {v2, v0, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v30

    move-wide/from16 v6, v64

    const/4 v4, 0x1

    goto :goto_49

    :cond_65
    move/from16 v30, v2

    move-wide/from16 v64, v6

    add-int/lit8 v1, v1, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x1

    goto :goto_48

    :cond_66
    move/from16 v30, v2

    move-wide/from16 v64, v6

    .line 455
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v0

    if-le v0, v9, :cond_6a

    const/4 v0, 0x0

    :goto_4b
    if-ge v0, v9, :cond_6a

    move-wide/from16 v1, v16

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v8, :cond_67

    .line 459
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    mul-double v6, v6, v28

    add-double/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 461
    :cond_67
    iget-object v3, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v1, v1, v3

    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v8, :cond_68

    .line 463
    iget-object v4, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    move-wide/from16 v28, v1

    iget-object v1, v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v28

    add-double/2addr v6, v1

    invoke-virtual {v4, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v28

    goto :goto_4d

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_69
    move/from16 v30, v2

    move-wide/from16 v64, v6

    .line 479
    :cond_6a
    :goto_4e
    invoke-static/range {v67 .. v67}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 480
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 481
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 482
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 483
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 484
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    const/16 v59, -0x1

    const/16 v66, 0x1

    move-wide/from16 v95, v16

    move-object/from16 v16, v14

    move/from16 v17, v15

    move-wide/from16 v14, v95

    .line 486
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v3

    .line 488
    aget-wide v4, v3, v18

    .line 489
    aget-wide v6, v3, v66

    move-wide/from16 v28, v14

    .line 493
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 494
    invoke-static {v1, v2, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v14

    mul-double v40, v64, v60

    cmpg-double v3, v14, v40

    if-gez v3, :cond_72

    mul-double v40, v64, v51

    mul-double v48, v40, v40

    .line 500
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v3

    move-wide/from16 v62, v1

    add-int/lit8 v1, v19, 0x2

    if-gt v3, v1, :cond_6b

    move-wide v3, v4

    move-object/from16 v41, v11

    move/from16 v40, v12

    move-wide v11, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v28

    move/from16 v28, v30

    move-wide/from16 v1, v62

    move-wide/from16 v29, v64

    move-wide/from16 v6, v73

    const/16 v5, 0x28a

    const/16 v33, -0x1

    goto/16 :goto_1

    :cond_6b
    move-wide/from16 v1, v34

    move-wide/from16 v33, v4

    move-wide/from16 v3, v36

    move-wide/from16 v35, v6

    .line 511
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    move-wide/from16 v40, v1

    move-wide/from16 v1, v38

    .line 512
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    const-wide/high16 v37, 0x3fc0000000000000L    # 0.125

    mul-double v37, v37, v64

    mul-double v37, v37, v64

    cmpl-double v7, v35, v28

    if-lez v7, :cond_6c

    mul-double v37, v37, v35

    cmpl-double v7, v5, v37

    if-lez v7, :cond_6c

    move-wide/from16 v38, v1

    move-wide/from16 v36, v3

    move-wide/from16 v3, v33

    move-wide/from16 v34, v40

    move-wide/from16 v1, v62

    move-wide/from16 v6, v73

    const/16 v5, 0x28a

    :goto_4f
    const/16 v33, -0x1

    move-object/from16 v41, v11

    move/from16 v40, v12

    move-wide v11, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v28

    move/from16 v28, v30

    move-wide/from16 v29, v64

    goto/16 :goto_1

    :cond_6c
    div-double v5, v5, v64

    const/4 v7, 0x0

    :goto_50
    move-wide/from16 v35, v1

    if-ge v7, v8, :cond_71

    .line 521
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v37, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    cmpl-double v17, v37, v1

    if-nez v17, :cond_6d

    .line 522
    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v37, v1

    goto :goto_51

    :cond_6d
    move-wide/from16 v37, v5

    .line 524
    :goto_51
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v51, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    cmpl-double v17, v51, v1

    if-nez v17, :cond_6e

    .line 525
    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    neg-double v1, v1

    goto :goto_52

    :cond_6e
    move-wide/from16 v1, v37

    :goto_52
    cmpg-double v17, v1, v5

    if-gez v17, :cond_70

    move-wide/from16 v37, v1

    .line 528
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v2, v7, v7

    add-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v51, v1

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v9, :cond_6f

    .line 531
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v1, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v54

    .line 532
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    mul-double v54, v54, v54

    mul-double v57, v57, v54

    add-double v51, v51, v57

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_6f
    mul-double v51, v51, v60

    mul-double v51, v51, v64

    add-double v1, v37, v51

    cmpg-double v17, v1, v5

    if-gez v17, :cond_70

    goto :goto_54

    :cond_70
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v35

    goto :goto_50

    :cond_71
    :goto_54
    move-wide/from16 v38, v35

    move-wide/from16 v1, v62

    move-wide/from16 v6, v73

    const/16 v5, 0x2a8

    move-wide/from16 v36, v3

    move-wide/from16 v3, v33

    move-wide/from16 v34, v40

    goto/16 :goto_4f

    :cond_72
    move-wide/from16 v62, v1

    move-wide/from16 v40, v34

    move-wide/from16 v33, v4

    move-wide/from16 v3, v36

    move-wide/from16 v35, v38

    add-int/lit8 v1, v17, 0x1

    move-wide/from16 v77, v14

    move v15, v1

    goto/16 :goto_47

    .line 553
    :goto_55
    invoke-static/range {v55 .. v55}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v1, v1, v20

    cmpg-double v5, v33, v1

    if-gtz v5, :cond_82

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    mul-double v1, v1, v20

    move-wide/from16 v6, v28

    const/4 v5, 0x0

    :goto_56
    const-wide/high16 v37, -0x4020000000000000L    # -0.5

    if-ge v5, v9, :cond_76

    .line 560
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    add-double v6, v6, v51

    mul-double v37, v37, v20

    move-wide/from16 v51, v1

    move-wide/from16 v1, v37

    const/4 v14, 0x0

    :goto_57
    if-ge v14, v8, :cond_73

    move-wide/from16 v55, v3

    .line 563
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v5, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    move-wide/from16 v37, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v37

    add-double/2addr v1, v3

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v55

    goto :goto_57

    :cond_73
    move-wide/from16 v55, v3

    .line 566
    invoke-virtual {v13, v5, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v3, v1, v60

    sub-double v3, v51, v3

    const/4 v14, 0x0

    :goto_58
    if-ge v14, v8, :cond_75

    move-wide/from16 v37, v1

    .line 569
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v5, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-virtual {v11, v14, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 570
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v5, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    mul-double v66, v66, v37

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    mul-double v68, v68, v3

    move-wide/from16 v70, v3

    add-double v2, v66, v68

    invoke-virtual {v1, v14, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int v1, v9, v14

    const/4 v2, 0x0

    :goto_59
    if-gt v2, v14, :cond_74

    .line 573
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v68, v68, v75

    add-double v66, v66, v68

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v68, v68, v75

    move/from16 v17, v5

    add-double v4, v66, v68

    invoke-virtual {v3, v1, v2, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v17

    goto :goto_59

    :cond_74
    move/from16 v17, v5

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v1, v37

    move-wide/from16 v3, v70

    goto :goto_58

    :cond_75
    move/from16 v17, v5

    add-int/lit8 v5, v17, 0x1

    move-wide/from16 v1, v51

    move-wide/from16 v3, v55

    goto/16 :goto_56

    :cond_76
    move-wide/from16 v51, v1

    move-wide/from16 v55, v3

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v10, :cond_7d

    move-wide/from16 v2, v28

    move-wide v4, v2

    const/4 v14, 0x0

    :goto_5b
    if-ge v14, v9, :cond_77

    move-wide/from16 v20, v2

    .line 587
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v14, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    add-double v2, v20, v2

    move-wide/from16 v20, v2

    .line 588
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v14, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    move-wide/from16 v70, v4

    mul-double v3, v66, v68

    invoke-virtual {v2, v14, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 589
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    add-double v4, v70, v2

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, v20

    goto :goto_5b

    :cond_77
    move-wide/from16 v20, v2

    move-wide/from16 v70, v4

    const/4 v2, 0x0

    :goto_5c
    if-ge v2, v8, :cond_7a

    mul-double v3, v51, v20

    mul-double v66, v70, v60

    sub-double v3, v3, v66

    .line 592
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    mul-double v3, v3, v66

    const/4 v5, 0x0

    :goto_5d
    if-ge v5, v9, :cond_78

    .line 594
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v5, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    mul-double v66, v66, v68

    add-double v3, v3, v66

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 596
    :cond_78
    invoke-virtual {v11, v2, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v5, 0x0

    :goto_5e
    if-ge v5, v9, :cond_79

    .line 598
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v5, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    move-wide/from16 v68, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double v3, v3, v68

    add-double v3, v66, v3

    invoke-virtual {v14, v5, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v3, v68

    goto :goto_5e

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_7a
    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v8, :cond_7c

    add-int v3, v2, v9

    .line 605
    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    const/4 v14, 0x0

    :goto_60
    if-gt v14, v2, :cond_7b

    move/from16 v17, v1

    .line 607
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v3, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    mul-double v66, v66, v4

    move-wide/from16 v68, v4

    add-double v4, v20, v66

    invoke-virtual {v1, v3, v14, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v17

    move-wide/from16 v4, v68

    goto :goto_60

    :cond_7b
    move/from16 v17, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_7c
    move/from16 v17, v1

    add-int/lit8 v1, v17, 0x1

    goto/16 :goto_5a

    :cond_7d
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_61
    if-ge v1, v8, :cond_80

    mul-double v3, v6, v37

    .line 619
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v3, v3, v20

    invoke-virtual {v11, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v9, :cond_7e

    .line 621
    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v51

    mul-double v20, v20, v51

    add-double v4, v4, v20

    invoke-virtual {v11, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 622
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    move-wide/from16 v59, v6

    sub-double v5, v20, v51

    invoke-virtual {v4, v3, v1, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v59

    goto :goto_62

    :cond_7e
    move-wide/from16 v59, v6

    const/4 v3, 0x0

    :goto_63
    if-gt v3, v1, :cond_7f

    .line 625
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    mul-double v20, v20, v51

    add-double v5, v5, v20

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    mul-double v20, v20, v51

    add-double v5, v5, v20

    invoke-virtual {v4, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 629
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v5, v9, v3

    add-int v6, v9, v1

    invoke-virtual {v4, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-virtual {v4, v5, v1, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v59

    goto/16 :goto_61

    :cond_80
    const/4 v1, 0x0

    :goto_64
    if-ge v1, v8, :cond_81

    .line 634
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 635
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 636
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 637
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 638
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v6, v28

    invoke-virtual {v2, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_81
    move-wide/from16 v6, v28

    move-wide/from16 v20, v6

    goto :goto_65

    :cond_82
    move-wide/from16 v55, v3

    move-wide/from16 v6, v28

    :goto_65
    if-nez v15, :cond_83

    move-object/from16 v14, v16

    move/from16 v28, v30

    move-wide/from16 v3, v33

    move-wide/from16 v38, v35

    move-wide/from16 v34, v40

    move-wide/from16 v36, v55

    move-wide/from16 v1, v62

    move-wide/from16 v29, v64

    const/16 v5, 0xd2

    goto :goto_66

    :cond_83
    move-object/from16 v14, v16

    move/from16 v28, v30

    move-wide/from16 v3, v33

    move-wide/from16 v38, v35

    move-wide/from16 v34, v40

    move-wide/from16 v36, v55

    move-wide/from16 v1, v62

    move-wide/from16 v29, v64

    const/16 v5, 0xe6

    :goto_66
    move-wide/from16 v16, v6

    :goto_67
    move-object/from16 v41, v11

    move/from16 v40, v12

    move/from16 v33, v15

    move-wide/from16 v6, v73

    move-wide/from16 v11, v77

    goto/16 :goto_1
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 2

    .line 2432
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2433
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2434
    aget-object p0, v0, p0

    .line 2435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prelim([D[D)V
    .locals 41

    move-object/from16 v0, p0

    .line 1580
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1582
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    .line 1583
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1584
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 1586
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v4, v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-ge v12, v1, :cond_2

    .line 1594
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v16, v6

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v15, v12, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 1596
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 1599
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v6, v16

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v6

    mul-int v3, v1, v10

    const/4 v6, 0x2

    .line 1602
    div-int/2addr v3, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_3

    .line 1603
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v7, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 1606
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    sub-int v7, v2, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_4

    .line 1608
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v3, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1620
    :goto_6
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v12

    sub-int v15, v12, v1

    move-wide/from16 v20, v13

    add-int/lit8 v13, v12, -0x1

    add-int/lit8 v14, v15, -0x1

    mul-int/lit8 v6, v1, 0x2

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    if-gt v12, v6, :cond_b

    if-lt v12, v11, :cond_7

    if-gt v12, v1, :cond_7

    move/from16 v26, v12

    .line 1629
    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move/from16 v28, v3

    .line 1630
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    cmpl-double v3, v29, v20

    if-nez v3, :cond_6

    neg-double v11, v11

    .line 1634
    :cond_6
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v29, v4

    move/from16 v4, v26

    invoke-virtual {v3, v4, v13, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-wide/from16 v5, v20

    goto :goto_8

    :cond_7
    move/from16 v28, v3

    move-wide/from16 v29, v4

    move v4, v12

    if-le v4, v1, :cond_a

    .line 1636
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v15, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    move v3, v6

    .line 1637
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v5, v5

    move/from16 v26, v3

    .line 1638
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    cmpl-double v3, v31, v20

    if-nez v3, :cond_8

    .line 1639
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v5, v5, v23

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v31, v11

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    goto :goto_7

    :cond_8
    move-wide/from16 v31, v11

    .line 1642
    :goto_7
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v3, v11, v20

    if-nez v3, :cond_9

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    .line 1643
    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v11, v11, v5

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 1646
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move/from16 v3, v28

    move-wide/from16 v11, v31

    move-wide/from16 v31, v8

    goto :goto_a

    :cond_a
    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-wide/from16 v5, v20

    move-wide v11, v5

    :goto_8
    move/from16 v3, v28

    goto :goto_a

    :cond_b
    move-wide/from16 v29, v4

    move/from16 v26, v6

    move v4, v12

    sub-int v12, v4, v10

    .line 1649
    div-int/2addr v12, v1

    mul-int v3, v12, v1

    sub-int v3, v4, v3

    sub-int/2addr v3, v1

    add-int/2addr v12, v3

    if-le v12, v1, :cond_c

    sub-int/2addr v12, v1

    move v7, v12

    goto :goto_9

    :cond_c
    move v7, v3

    move v3, v12

    :goto_9
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v7, -0x1

    .line 1660
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v31, v8

    invoke-virtual {v11, v3, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-virtual {v11, v4, v5, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1661
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v7, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-virtual {v5, v4, v6, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v5, v20

    move-wide v11, v5

    :goto_a
    const/4 v8, 0x0

    :goto_b
    if-ge v8, v1, :cond_f

    .line 1668
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v33, v11

    aget-wide v11, p1, v8

    move/from16 v28, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v37

    move-wide/from16 v39, v5

    add-double v5, v35, v37

    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    aget-wide v11, p2, v8

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    invoke-virtual {v9, v8, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1671
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v1, v5, v11

    if-nez v1, :cond_d

    .line 1672
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v8

    invoke-virtual {v1, v8, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1674
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v1, v5, v11

    if-nez v1, :cond_e

    .line 1675
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v8

    invoke-virtual {v1, v8, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v28

    move-wide/from16 v11, v33

    move-wide/from16 v5, v39

    goto :goto_b

    :cond_f
    move/from16 v28, v1

    move-wide/from16 v39, v5

    move-wide/from16 v33, v11

    .line 1679
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v5

    .line 1680
    iget-boolean v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    neg-double v5, v5

    .line 1681
    :goto_c
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    .line 1682
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v8, 0x1

    if-ne v1, v8, :cond_11

    const/4 v8, 0x0

    .line 1686
    iput v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-wide/from16 v18, v5

    goto :goto_d

    .line 1687
    :cond_11
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpg-double v11, v5, v8

    if-gez v11, :cond_12

    .line 1688
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    :cond_12
    :goto_d
    add-int/lit8 v8, v26, 0x1

    if-gt v1, v8, :cond_17

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const/4 v11, 0x2

    if-lt v1, v11, :cond_13

    if-gt v1, v10, :cond_13

    .line 1700
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-double v5, v5, v18

    div-double v5, v5, v33

    invoke-virtual {v11, v13, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int v1, v1, v28

    if-ge v2, v1, :cond_16

    div-double v5, v16, v33

    .line 1703
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v11, v5

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v13, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1704
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v13, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1705
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v4, v2, v13

    mul-double v5, v29, v8

    invoke-virtual {v1, v4, v13, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v11, v28, 0x2

    if-lt v1, v11, :cond_16

    add-int/lit8 v1, v15, 0x1

    mul-int v1, v1, v15

    const/16 v22, 0x2

    .line 1709
    div-int/lit8 v1, v1, 0x2

    const/16 v27, 0x1

    add-int/lit8 v1, v1, -0x1

    sub-double v11, v5, v18

    div-double v11, v11, v39

    sub-double v26, v39, v33

    .line 1712
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v35, v8

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    sub-double v8, v11, v8

    mul-double v8, v8, v23

    div-double v8, v8, v26

    invoke-virtual {v13, v1, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1713
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v39

    mul-double v11, v11, v33

    sub-double/2addr v8, v11

    div-double v8, v8, v26

    invoke-virtual {v1, v14, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v11, v33, v39

    cmpg-double v1, v11, v20

    if-gez v1, :cond_15

    .line 1714
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpg-double v1, v5, v8

    if-gez v1, :cond_15

    .line 1715
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v1, v4, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1716
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v15, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1717
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v1, v4, :cond_14

    .line 1718
    iput v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1720
    :cond_14
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v5, v39

    invoke-virtual {v1, v15, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1721
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v8, v33

    invoke-virtual {v1, v4, v14, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_e

    :cond_15
    move-wide/from16 v8, v33

    move-wide/from16 v5, v39

    .line 1723
    :goto_e
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-double/2addr v5, v8

    neg-double v5, v5

    div-double/2addr v5, v11

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1724
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v15, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    div-double v5, v35, v5

    invoke-virtual {v1, v4, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1725
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v8, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    neg-double v5, v5

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v4, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    sub-double v5, v5, v25

    invoke-virtual {v1, v15, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1727
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v5, v11

    invoke-virtual {v1, v8, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1728
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    div-double v5, v5, v29

    invoke-virtual {v1, v4, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1730
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v8, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    neg-double v5, v5

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v4, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    sub-double/2addr v5, v11

    invoke-virtual {v1, v15, v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_16
    :goto_f
    move-wide/from16 v11, v31

    const/16 v22, 0x2

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    .line 1738
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v11, v31

    invoke-virtual {v1, v8, v14, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1739
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v14, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1740
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v11

    invoke-virtual {v1, v3, v14, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1741
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v7, v14, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v3, -0x1

    mul-int v8, v3, v1

    const/16 v22, 0x2

    .line 1743
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    const/16 v27, 0x1

    add-int/lit8 v8, v8, -0x1

    .line 1744
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    mul-double v13, v13, v23

    .line 1745
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    sub-double v23, v18, v23

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    sub-double v23, v23, v26

    add-double v23, v23, v5

    div-double v4, v23, v13

    invoke-virtual {v1, v8, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1748
    :goto_10
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    if-lt v1, v2, :cond_18

    return-void

    :cond_18
    move-wide v8, v11

    move-wide/from16 v13, v20

    move/from16 v1, v28

    move-wide/from16 v4, v29

    const/4 v6, 0x2

    goto/16 :goto_6
.end method

.method private static printMethod()V
    .locals 0

    return-void
.end method

.method private static printState(I)V
    .locals 0

    return-void
.end method

.method private setup([D[D)V
    .locals 16

    move-object/from16 v0, p0

    .line 2377
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2379
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 2380
    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    mul-int v6, v4, v5

    .line 2387
    div-int/2addr v6, v3

    filled-new-array {v4, v6}, [I

    move-result-object v4

    .line 2388
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v7, 0x0

    aget v8, v4, v7

    if-lt v6, v8, :cond_2

    aget v8, v4, v2

    if-gt v6, v8, :cond_2

    .line 2397
    new-array v4, v1, [D

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 2399
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v7, v1, :cond_0

    .line 2402
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v12, p2, v7

    aget-wide v14, p1, v7

    sub-double/2addr v12, v14

    aput-wide v12, v4, v7

    .line 2403
    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v4, v8, v10

    if-gez v4, :cond_1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v6

    .line 2406
    iput-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 2410
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v6, v1

    invoke-direct {v4, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2412
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v7, v6, v1

    sub-int/2addr v7, v2

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2414
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2416
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2417
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2418
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2419
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2420
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2421
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2422
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2423
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2424
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2425
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2426
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v4, v1

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2427
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v1, v1, v5

    div-int/2addr v1, v3

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void

    .line 2390
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 2384
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 81

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 1806
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1808
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v6

    .line 1809
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    if-ge v9, v6, :cond_3

    .line 1844
    invoke-virtual {v2, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/16 v17, 0x0

    .line 1845
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    cmpg-double v8, v18, v20

    if-gtz v8, :cond_0

    .line 1846
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpl-double v8, v15, v13

    if-ltz v8, :cond_1

    .line 1847
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 1849
    :cond_0
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    cmpl-double v8, v11, v18

    if-ltz v8, :cond_1

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpg-double v8, v11, v13

    if-gtz v8, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 1851
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1853
    :cond_1
    :goto_1
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 1856
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1857
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v1, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    mul-double v8, p1, p1

    const/16 v15, 0x14

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    move-wide/from16 v34, v32

    move-wide/from16 v39, v34

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v48, v45

    move-wide/from16 v51, v48

    move-wide/from16 v37, v20

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/16 v36, 0x0

    const/16 v47, -0x1

    const/16 v50, 0x0

    :goto_2
    const-wide v53, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0x1e

    if-eq v12, v15, :cond_40

    if-eq v12, v13, :cond_3f

    const-wide v57, 0x3f847ae147ae147bL    # 0.01

    const/16 v16, 0x1e

    const/16 v13, 0x64

    const/16 v59, 0x14

    const/16 v15, 0x5a

    const/16 v14, 0x32

    const-wide/high16 v61, 0x3fe0000000000000L    # 0.5

    if-eq v12, v14, :cond_29

    if-eq v12, v15, :cond_28

    if-eq v12, v13, :cond_27

    const/16 v15, 0x78

    if-eq v12, v15, :cond_1e

    const/16 v63, 0x64

    const/16 v13, 0x96

    const/16 v64, 0x32

    const/4 v14, 0x1

    if-eq v12, v13, :cond_f

    const/16 v13, 0xbe

    const/16 v16, 0x96

    if-eq v12, v13, :cond_d

    const/16 v13, 0xd2

    if-ne v12, v13, :cond_c

    .line 2236
    invoke-static {v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v12, v6, :cond_6

    move-wide/from16 v65, v8

    const-wide/16 v8, 0x0

    .line 2239
    invoke-virtual {v4, v12, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v8, 0x0

    :goto_4
    if-gt v8, v12, :cond_5

    if-ge v8, v12, :cond_4

    .line 2242
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    mul-double v57, v57, v60

    const/16 p2, 0x78

    add-double v14, v53, v57

    invoke-virtual {v4, v12, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_5

    :cond_4
    const/16 p2, 0x78

    .line 2244
    :goto_5
    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    invoke-virtual {v3, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    mul-double v53, v53, v57

    add-double v14, v14, v53

    invoke-virtual {v4, v8, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x78

    goto :goto_4

    :cond_5
    const/16 p2, 0x78

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v8, v65

    const/16 v15, 0x78

    goto :goto_3

    :cond_6
    move-wide/from16 v65, v8

    const/16 p2, 0x78

    .line 2248
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_8

    .line 2250
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    const-wide/16 v55, 0x0

    cmpl-double v14, v12, v55

    if-eqz v14, :cond_7

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_7

    .line 2252
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v9, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v57

    mul-double v53, v53, v57

    add-double v13, v13, v53

    invoke-virtual {v4, v12, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    const-wide/16 v55, 0x0

    cmpl-double v8, v37, v55

    if-eqz v8, :cond_9

    move-wide/from16 v8, v65

    const/16 v12, 0x32

    goto/16 :goto_13

    :cond_9
    move/from16 v8, v36

    if-le v11, v8, :cond_a

    move/from16 v36, v8

    move-wide/from16 v8, v65

    const/16 v12, 0x96

    goto/16 :goto_13

    :cond_a
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v6, :cond_b

    .line 2263
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-virtual {v5, v9, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    move/from16 v36, v8

    move-wide/from16 v8, v65

    :goto_9
    const/16 v12, 0x78

    goto/16 :goto_13

    .line 2268
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "trsbox"

    aput-object v4, v3, v17

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_d
    const/16 v36, 0x1

    :cond_e
    const/16 v60, 0xbe

    goto/16 :goto_10

    :cond_f
    move-wide/from16 v65, v8

    move/from16 v8, v36

    const/16 p2, 0x78

    const/16 v16, 0x96

    .line 2125
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v53, 0x0

    :goto_a
    if-ge v9, v6, :cond_11

    .line 2130
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    const-wide/16 v55, 0x0

    cmpl-double v36, v67, v55

    if-nez v36, :cond_10

    .line 2131
    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v12, v12, v67

    const/16 v36, 0x1

    .line 2132
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v15, v15, v67

    .line 2133
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v53, v53, v67

    goto :goto_b

    :cond_10
    const/16 v36, 0x1

    :goto_b
    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x1

    goto :goto_a

    :cond_11
    const/16 v36, 0x1

    const-wide/high16 v67, 0x4031000000000000L    # 17.0

    mul-double v67, v67, v32

    const-wide v69, 0x4008cccccccccccdL    # 3.1

    move v9, v7

    move v14, v8

    add-double v7, v67, v69

    double-to-int v7, v7

    move/from16 v71, v9

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    :goto_c
    if-ge v8, v7, :cond_14

    move/from16 v72, v11

    move-wide/from16 v73, v12

    int-to-double v11, v8

    mul-double v11, v11, v32

    move-wide/from16 v39, v11

    int-to-double v11, v7

    div-double v39, v39, v11

    add-double v11, v39, v39

    mul-double v75, v39, v39

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v75, v75, v18

    div-double v11, v11, v75

    mul-double v75, v39, v53

    sub-double v75, v75, v15

    sub-double v75, v75, v15

    mul-double v75, v75, v39

    add-double v75, v73, v75

    mul-double v77, v39, v26

    sub-double v77, v77, v45

    mul-double v79, v11, v61

    mul-double v79, v79, v75

    sub-double v77, v77, v79

    mul-double v11, v11, v77

    cmpl-double v13, v11, v67

    if-lez v13, :cond_12

    move v9, v8

    move-wide/from16 v67, v11

    move-wide/from16 v41, v69

    goto :goto_d

    :cond_12
    add-int/lit8 v13, v9, 0x1

    if-ne v8, v13, :cond_13

    move-wide/from16 v43, v11

    :cond_13
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v69, v11

    move/from16 v11, v72

    move-wide/from16 v12, v73

    goto :goto_c

    :cond_14
    move/from16 v72, v11

    move-wide/from16 v73, v12

    if-gez v9, :cond_15

    :goto_e
    move/from16 v36, v14

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    goto/16 :goto_12

    :cond_15
    if-ge v9, v7, :cond_16

    sub-double v11, v43, v41

    add-double v67, v67, v67

    sub-double v67, v67, v41

    sub-double v67, v67, v43

    div-double v11, v11, v67

    move-wide/from16 v39, v11

    int-to-double v11, v9

    mul-double v39, v39, v61

    add-double v11, v11, v39

    mul-double v11, v11, v32

    move-wide/from16 v39, v11

    int-to-double v11, v7

    div-double v11, v39, v11

    move-wide/from16 v39, v11

    :cond_16
    mul-double v11, v39, v39

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v67, v18, v11

    add-double v11, v11, v18

    div-double v67, v67, v11

    add-double v69, v39, v39

    div-double v69, v69, v11

    mul-double v53, v53, v39

    sub-double v53, v53, v15

    sub-double v53, v53, v15

    mul-double v53, v53, v39

    add-double v12, v73, v53

    mul-double v15, v39, v26

    sub-double v15, v15, v45

    mul-double v61, v61, v69

    mul-double v61, v61, v12

    sub-double v15, v15, v61

    mul-double v15, v15, v69

    const-wide/16 v55, 0x0

    cmpg-double v8, v15, v55

    if-gtz v8, :cond_17

    goto :goto_e

    :cond_17
    const/4 v8, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    :goto_f
    if-ge v8, v6, :cond_19

    .line 2185
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v53, v67, v18

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v61

    mul-double v53, v53, v61

    add-double v11, v11, v53

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v69

    add-double v11, v11, v53

    invoke-virtual {v1, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2186
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/16 v55, 0x0

    cmpl-double v13, v11, v55

    if-nez v13, :cond_18

    .line 2187
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double v12, v12, v67

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v69

    add-double v12, v12, v53

    invoke-virtual {v11, v8, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2188
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v11, v11, v53

    add-double v26, v26, v11

    .line 2190
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v11

    add-double v22, v22, v11

    .line 2193
    :cond_18
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v67

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v69

    add-double v11, v11, v53

    invoke-virtual {v5, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_19
    add-double v28, v28, v15

    move/from16 v11, v47

    if-ltz v11, :cond_1a

    if-ne v9, v7, :cond_1a

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v7, v48

    .line 2198
    invoke-virtual {v2, v11, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v47, v11

    move/from16 v36, v14

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v12, 0x64

    goto/16 :goto_13

    :cond_1a
    move-wide/from16 v7, v48

    mul-double v57, v57, v28

    cmpl-double v9, v15, v57

    if-lez v9, :cond_e

    move-wide/from16 v48, v7

    move/from16 v47, v11

    move/from16 v36, v14

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    goto/16 :goto_9

    .line 2210
    :goto_10
    invoke-static/range {v60 .. v60}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v1, 0x0

    const-wide/16 v13, 0x0

    :goto_11
    if-ge v1, v6, :cond_1d

    .line 2215
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    add-double/2addr v3, v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 2217
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v5, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2218
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v5, v3, v20

    if-nez v5, :cond_1b

    .line 2219
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2221
    :cond_1b
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v3, v18

    if-nez v5, :cond_1c

    .line 2222
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2224
    :cond_1c
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v4, v7

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2226
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v3

    add-double/2addr v13, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    const/4 v1, 0x2

    .line 2229
    new-array v1, v1, [D

    aput-wide v13, v1, v17

    aput-wide v37, v1, v36

    return-object v1

    :cond_1e
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 v72, v11

    move/from16 v12, v36

    move-wide/from16 v13, v37

    move/from16 v11, v47

    move-wide/from16 v7, v48

    const/16 p2, 0x78

    const/16 v60, 0xbe

    .line 2054
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v15, v72, 0x1

    mul-double v36, v22, v24

    mul-double v47, v26, v26

    sub-double v36, v36, v47

    mul-double v53, v53, v28

    mul-double v53, v53, v28

    cmpg-double v16, v36, v53

    if-gtz v16, :cond_1f

    move-wide/from16 v48, v7

    move/from16 v47, v11

    move/from16 v36, v12

    move-wide/from16 v37, v13

    move v11, v15

    move-wide/from16 v8, v65

    move/from16 v7, v71

    :goto_12
    const/16 v12, 0xbe

    :goto_13
    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    goto/16 :goto_2

    :cond_1f
    move/from16 p2, v10

    .line 2060
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v6, :cond_21

    .line 2062
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    move-wide/from16 v36, v7

    const-wide/16 v7, 0x0

    cmpl-double v16, v32, v7

    if-nez v16, :cond_20

    .line 2063
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v26

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    mul-double v32, v32, v24

    sub-double v7, v7, v32

    div-double/2addr v7, v9

    invoke-virtual {v3, v11, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v7, 0x0

    goto :goto_15

    .line 2065
    :cond_20
    invoke-virtual {v3, v11, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_15
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v36

    goto :goto_14

    :cond_21
    move-wide/from16 v36, v7

    const-wide/16 v7, 0x0

    neg-double v9, v9

    move-wide/from16 v48, v36

    const/4 v11, 0x0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const/16 v47, -0x1

    :goto_16
    if-ge v11, v6, :cond_26

    .line 2078
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    cmpl-double v16, v36, v7

    if-nez v16, :cond_25

    .line 2079
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    add-double v7, v7, v36

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    sub-double v7, v7, v36

    .line 2080
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    sub-double v36, v36, v45

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    sub-double v36, v36, v45

    const-wide/16 v55, 0x0

    cmpg-double v5, v7, v55

    if-gtz v5, :cond_22

    add-int/lit8 v5, p2, 0x1

    move-wide/from16 v7, v20

    .line 2083
    invoke-virtual {v2, v11, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_17

    :cond_22
    cmpg-double v5, v36, v55

    if-gtz v5, :cond_23

    add-int/lit8 v5, p2, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 2087
    invoke-virtual {v2, v11, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_17

    .line 2091
    :cond_23
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    .line 2093
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v45, v45, v45

    mul-double v53, v53, v53

    add-double v45, v45, v53

    .line 2096
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v53, v53, v57

    mul-double v53, v53, v53

    sub-double v53, v45, v53

    const-wide/16 v55, 0x0

    cmpl-double v5, v53, v55

    if-lez v5, :cond_24

    .line 2099
    invoke-static/range {v53 .. v54}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v53

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v53, v53, v57

    mul-double v57, v32, v53

    cmpl-double v5, v57, v7

    if-lez v5, :cond_24

    div-double v32, v7, v53

    move/from16 v47, v11

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    .line 2107
    :cond_24
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    sub-double v7, v7, v53

    mul-double v7, v7, v7

    sub-double v45, v45, v7

    const-wide/16 v55, 0x0

    cmpl-double v5, v45, v55

    if-lez v5, :cond_25

    .line 2110
    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    add-double v7, v7, v45

    mul-double v45, v32, v7

    cmpl-double v5, v45, v36

    if-lez v5, :cond_25

    div-double v36, v36, v7

    move/from16 v47, v11

    move-wide/from16 v32, v36

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    :cond_25
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p7

    const-wide/16 v7, 0x0

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    goto/16 :goto_16

    :cond_26
    move/from16 v5, p2

    :goto_17
    move-wide/from16 v45, v9

    move/from16 v36, v12

    move-wide/from16 v37, v13

    move v11, v15

    move-wide/from16 v8, v65

    move/from16 v7, v71

    const/16 v12, 0xd2

    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move v10, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    :cond_27
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 p2, v10

    move/from16 v72, v11

    move/from16 v12, v36

    move-wide/from16 v13, v37

    move/from16 v11, v47

    move-wide/from16 v36, v48

    const/16 v60, 0xbe

    const/16 v63, 0x64

    move/from16 v4, v50

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_25

    :cond_28
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 p2, v10

    move/from16 v72, v11

    move/from16 v12, v36

    move/from16 v11, v47

    move-wide/from16 v36, v48

    const/16 v60, 0xbe

    const/16 v63, 0x64

    move/from16 v11, v72

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v49, 0x5a

    :goto_18
    move/from16 v4, v50

    goto/16 :goto_24

    :cond_29
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 p2, v10

    move/from16 v72, v11

    move/from16 v12, v36

    move-wide/from16 v13, v37

    move/from16 v11, v47

    move-wide/from16 v36, v48

    const/16 v60, 0xbe

    const/16 v63, 0x64

    const/16 v64, 0x32

    .line 1910
    invoke-static/range {v64 .. v64}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v47, v65

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :goto_19
    if-ge v5, v6, :cond_2b

    .line 1915
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    const-wide/16 v55, 0x0

    cmpl-double v49, v53, v55

    if-nez v49, :cond_2a

    const/16 v49, 0x5a

    .line 1917
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v53

    sub-double v47, v47, v53

    .line 1919
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v53, v53, v67

    add-double v7, v7, v53

    .line 1920
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v53, v53, v67

    add-double v9, v9, v53

    goto :goto_1a

    :cond_2a
    const/16 v49, 0x5a

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0x5a

    goto :goto_19

    :cond_2b
    const/16 v49, 0x5a

    const-wide/16 v55, 0x0

    cmpg-double v5, v47, v55

    if-gtz v5, :cond_2c

    move/from16 v10, p2

    move-object/from16 v5, p7

    move/from16 v47, v11

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move/from16 v36, v12

    move-wide/from16 v37, v13

    move-wide/from16 v13, v55

    const/16 v12, 0x5a

    goto/16 :goto_2

    :cond_2c
    mul-double v53, v30, v47

    mul-double v67, v7, v7

    add-double v53, v53, v67

    .line 1926
    invoke-static/range {v53 .. v54}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v53

    cmpg-double v5, v7, v55

    if-gez v5, :cond_2d

    sub-double v53, v53, v7

    div-double v53, v53, v30

    goto :goto_1b

    :cond_2d
    add-double v53, v53, v7

    div-double v53, v47, v53

    :goto_1b
    move-wide/from16 v7, v53

    cmpl-double v5, v9, v55

    move-wide/from16 v47, v9

    if-lez v5, :cond_2e

    div-double v9, v22, v47

    .line 1935
    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    goto :goto_1c

    :cond_2e
    move-wide v9, v7

    :goto_1c
    const/4 v5, -0x1

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v6, :cond_31

    .line 1943
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    cmpl-double v15, v53, v55

    if-eqz v15, :cond_30

    .line 1944
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    add-double v53, v53, v67

    .line 1945
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    cmpl-double v15, v67, v55

    if-lez v15, :cond_2f

    .line 1946
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    sub-double v67, v67, v53

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    goto :goto_1e

    .line 1948
    :cond_2f
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    sub-double v67, v67, v53

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    :goto_1e
    div-double v67, v67, v53

    cmpg-double v15, v67, v9

    if-gez v15, :cond_30

    move v5, v11

    move-wide/from16 v9, v67

    :cond_30
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v55, 0x0

    goto :goto_1d

    :cond_31
    cmpl-double v11, v9, v55

    if-lez v11, :cond_35

    add-int/lit8 v11, v72, 0x1

    move-wide/from16 v53, v7

    div-double v7, v47, v30

    const/4 v15, -0x1

    if-ne v5, v15, :cond_32

    cmpl-double v51, v7, v55

    if-lez v51, :cond_32

    .line 1964
    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v51, v13, v20

    if-nez v51, :cond_32

    move-wide v13, v7

    :cond_32
    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    :goto_1f
    if-ge v15, v6, :cond_34

    .line 1972
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v67, v67, v9

    move-wide/from16 v69, v7

    add-double v7, v51, v67

    invoke-virtual {v1, v15, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1973
    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v55, 0x0

    cmpl-double v51, v7, v55

    if-nez v51, :cond_33

    .line 1975
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v7

    add-double v7, v69, v7

    goto :goto_20

    :cond_33
    move-wide/from16 v7, v69

    .line 1978
    :goto_20
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    invoke-virtual {v3, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v67, v67, v9

    move-wide/from16 v69, v7

    add-double v7, v51, v67

    invoke-virtual {v4, v15, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p6

    move-wide/from16 v7, v69

    goto :goto_1f

    :cond_34
    move-wide/from16 v69, v7

    mul-double v61, v61, v9

    mul-double v61, v61, v47

    sub-double v7, v22, v61

    mul-double v7, v7, v9

    move-wide/from16 v47, v9

    const-wide/16 v9, 0x0

    .line 1982
    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v55

    add-double v28, v28, v55

    move-wide/from16 v51, v22

    move-wide/from16 v7, v55

    move-wide/from16 v22, v69

    goto :goto_21

    :cond_35
    move-wide/from16 v53, v7

    move-wide/from16 v47, v9

    move-wide/from16 v9, v55

    move-wide v7, v9

    move/from16 v11, v72

    :goto_21
    if-ltz v5, :cond_38

    add-int/lit8 v4, p2, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1990
    invoke-virtual {v2, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1991
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpg-double v18, v15, v9

    if-gez v18, :cond_36

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 1992
    invoke-virtual {v2, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1995
    :cond_36
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v7

    sub-double v7, v65, v7

    cmpg-double v18, v7, v9

    if-gtz v18, :cond_37

    move v10, v4

    move/from16 v47, v5

    move-wide v8, v7

    move-wide/from16 v48, v36

    goto :goto_23

    :cond_37
    move v10, v4

    move/from16 v47, v5

    move-wide v8, v7

    move-wide/from16 v48, v36

    move/from16 v7, v71

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v36, v12

    move-wide/from16 v37, v13

    const/16 v12, 0x14

    goto/16 :goto_27

    :cond_38
    move-wide v9, v7

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v47, v53

    if-gez v4, :cond_3b

    move/from16 v4, v50

    if-ne v11, v4, :cond_39

    :goto_22
    move/from16 v10, p2

    move/from16 v50, v4

    move/from16 v47, v5

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    :goto_23
    move/from16 v7, v71

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    goto :goto_26

    :cond_39
    mul-double v57, v57, v28

    cmpg-double v7, v9, v57

    if-gtz v7, :cond_3a

    goto :goto_22

    :cond_3a
    div-double v34, v22, v51

    move/from16 v10, p2

    move/from16 v50, v4

    move/from16 v47, v5

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v36, v12

    move-wide/from16 v37, v13

    const/16 v12, 0x1e

    goto :goto_27

    :cond_3b
    move/from16 v47, v5

    goto/16 :goto_18

    .line 2018
    :goto_24
    invoke-static/range {v49 .. v49}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v72, v11

    const-wide/16 v13, 0x0

    .line 2027
    :goto_25
    invoke-static/range {v63 .. v63}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v5, v6, -0x1

    move/from16 v10, p2

    if-lt v10, v5, :cond_3c

    move-object/from16 v5, p7

    move/from16 v50, v4

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    :goto_26
    move/from16 v36, v12

    move-wide/from16 v37, v13

    const/16 v12, 0xbe

    :goto_27
    const-wide/16 v13, 0x0

    goto/16 :goto_2

    :cond_3c
    const/4 v5, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    :goto_28
    if-ge v5, v6, :cond_3e

    .line 2035
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v55, 0x0

    cmpl-double v9, v7, v55

    if-nez v9, :cond_3d

    .line 2037
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v7

    add-double v24, v24, v7

    .line 2039
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v7, v7, v11

    add-double v26, v26, v7

    .line 2041
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v7

    add-double v22, v22, v7

    .line 2043
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v3, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_29

    :cond_3d
    const-wide/16 v7, 0x0

    .line 2045
    invoke-virtual {v3, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3e
    move-object/from16 v5, p7

    move/from16 v50, v4

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    move/from16 v36, v11

    const/16 v12, 0xd2

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    move-wide/from16 v37, v13

    goto :goto_27

    :cond_3f
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 v72, v11

    move/from16 v12, v36

    move-wide/from16 v13, v37

    move/from16 v11, v47

    move-wide/from16 v36, v48

    move/from16 v4, v50

    const/16 v16, 0x1e

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v59, 0x14

    const/16 v60, 0xbe

    goto :goto_2a

    :cond_40
    move/from16 v71, v7

    move-wide/from16 v65, v8

    move/from16 v72, v11

    move/from16 v12, v36

    move-wide/from16 v13, v37

    move/from16 v11, v47

    move-wide/from16 v36, v48

    move/from16 v4, v50

    const/16 v16, 0x1e

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v59, 0x14

    const/16 v60, 0xbe

    .line 1873
    invoke-static/range {v59 .. v59}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const-wide/16 v34, 0x0

    .line 1877
    :goto_2a
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v5, 0x0

    const-wide/16 v30, 0x0

    :goto_2b
    if-ge v5, v6, :cond_43

    .line 1880
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    move v9, v6

    move-wide v15, v7

    const-wide/16 v6, 0x0

    cmpl-double v8, v15, v6

    if-eqz v8, :cond_41

    .line 1881
    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2c

    :cond_41
    cmpl-double v8, v34, v6

    if-nez v8, :cond_42

    .line 1883
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2c

    .line 1885
    :cond_42
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v6, v6, v34

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    sub-double/2addr v6, v15

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1888
    :goto_2c
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v6, v6, v6

    add-double v30, v30, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_2b

    :cond_43
    move v9, v6

    const-wide/16 v55, 0x0

    cmpl-double v5, v30, v55

    if-nez v5, :cond_44

    move-object/from16 v5, p7

    move/from16 v50, v4

    move v6, v9

    move/from16 v47, v11

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v4, p6

    :goto_2d
    move/from16 v36, v12

    move-wide/from16 v37, v13

    move-wide/from16 v13, v55

    const/16 v12, 0xbe

    goto/16 :goto_2

    :cond_44
    cmpl-double v5, v34, v55

    if-nez v5, :cond_45

    add-int v4, v72, v9

    sub-int v50, v4, v10

    move-wide/from16 v22, v30

    goto :goto_2e

    :cond_45
    move/from16 v50, v4

    :goto_2e
    mul-double v4, v22, v65

    mul-double v53, v53, v28

    mul-double v53, v53, v28

    cmpg-double v6, v4, v53

    if-gtz v6, :cond_46

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move v6, v9

    move/from16 v47, v11

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    goto :goto_2d

    :cond_46
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move v6, v9

    move/from16 v47, v11

    move-wide/from16 v48, v36

    move-wide/from16 v8, v65

    move/from16 v7, v71

    move/from16 v11, v72

    const/16 v15, 0x14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move/from16 v36, v12

    move-wide/from16 v37, v13

    move-wide/from16 v13, v55

    const/16 v12, 0xd2

    goto/16 :goto_2
.end method

.method private update(DDI)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2293
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2295
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 2296
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v4, v3, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 2300
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v3, v2

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_0

    .line 2306
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v10, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-wide v13, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v11, v11, v13

    :goto_2
    if-ge v5, v4, :cond_3

    .line 2314
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 2315
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v10, v13, v11

    if-lez v10, :cond_2

    .line 2317
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 2319
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double v13, v13, v13

    mul-double v15, v15, v15

    add-double/2addr v13, v15

    .line 2320
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 2321
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    div-double/2addr v15, v13

    .line 2322
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v17

    div-double v17, v17, v13

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_2

    .line 2324
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double v13, v13, v15

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v7, v7, v17

    add-double/2addr v13, v7

    .line 2325
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    mul-double v21, v21, v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    mul-double v23, v23, v17

    move-wide/from16 v25, v11

    sub-double v11, v21, v23

    invoke-virtual {v7, v10, v5, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2326
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v11

    .line 2329
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v1, v5, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v25

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_4

    .line 2336
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double v7, v7, v10

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2338
    :cond_4
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 2339
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 2340
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-virtual {v10, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2344
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v12, v7, v10

    .line 2346
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    div-double/2addr v14, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v3, :cond_5

    .line 2348
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v16

    mul-double v16, v16, v12

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v14

    move-wide/from16 v21, v4

    sub-double v4, v16, v19

    const/4 v9, 0x0

    invoke-virtual {v11, v10, v9, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v4, v21

    goto :goto_5

    :cond_5
    move-wide/from16 v21, v4

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_8

    add-int v5, v3, v4

    .line 2356
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v6, v5, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2357
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    mul-double v10, v10, v21

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double v12, v12, v7

    sub-double/2addr v10, v12

    div-double v10, v10, p3

    move-wide/from16 v12, p1

    neg-double v14, v12

    .line 2358
    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    mul-double v14, v14, v16

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    mul-double v16, v16, v7

    sub-double v14, v14, v16

    div-double v14, v14, p3

    const/4 v9, 0x0

    :goto_7
    if-gt v9, v5, :cond_7

    .line 2360
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v9, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v16

    move/from16 v19, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v10

    add-double v16, v16, v23

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v14

    move-object v2, v6

    move-wide/from16 v25, v7

    add-double v6, v16, v23

    invoke-virtual {v1, v9, v4, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    if-lt v9, v3, :cond_6

    .line 2363
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v6, v9, v3

    invoke-virtual {v1, v9, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p5

    move-object v6, v2

    move/from16 v2, v19

    move-wide/from16 v7, v25

    goto :goto_7

    :cond_7
    move/from16 v19, v2

    move-object v2, v6

    move-wide/from16 v25, v7

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p5

    move/from16 v2, v19

    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 5

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 237
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->setup([D[D)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    .line 240
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 242
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v0

    .line 244
    new-instance v2, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v2
.end method
