.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CHECKFEASABLECOUNT:I = 0x0

.field public static final DEFAULT_DIAGONALONLY:I = 0x0

.field public static final DEFAULT_ISACTIVECMA:Z = true

.field public static final DEFAULT_MAXITERATIONS:I = 0x7530

.field public static final DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

.field public static final DEFAULT_STOPFITNESS:D


# instance fields
.field private B:Lorg/apache/commons/math3/linear/RealMatrix;

.field private BD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private C:Lorg/apache/commons/math3/linear/RealMatrix;

.field private D:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cc:D

.field private ccov1:D

.field private ccov1Sep:D

.field private ccovmu:D

.field private ccovmuSep:D

.field private checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    const/4 p9, 0x0

    .line 138
    iput p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 142
    iput-boolean p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 221
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 223
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 225
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 227
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 357
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 358
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 359
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 360
    iput p5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 361
    iput p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 362
    iput-object p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 363
    iput-boolean p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V

    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    new-instance v11, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v11}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[DIDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-direct {p0, p11}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    const/4 p11, 0x0

    .line 138
    iput p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 142
    iput-boolean p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 221
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 223
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 225
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 227
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 322
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    check-cast p1, [D

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    .line 324
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 325
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 326
    iput-boolean p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 327
    iput p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 328
    iput p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 329
    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 330
    iput-boolean p10, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    return p0
.end method

.method private checkParameters()V
    .locals 12

    .line 671
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v0

    .line 672
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 673
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 675
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-eqz v3, :cond_3

    .line 676
    array-length v3, v3

    array-length v4, v0

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 679
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 680
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_1

    .line 684
    aget-wide v8, v2, v4

    aget-wide v10, v1, v4

    sub-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 685
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v6, v2, v4

    aget-wide v8, v1, v4

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 682
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 677
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    array-length v2, v2

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_3
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1252
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1253
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p2, v0, p3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 1227
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1228
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    .line 1229
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1230
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0

    .line 1234
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    new-array v1, v1, [I

    aput v3, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    .line 1235
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1236
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1238
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1166
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1167
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1168
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1169
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static eye(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    const/4 v0, 0x2

    .line 1277
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    if-ge v2, p1, :cond_0

    .line 1280
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1283
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private initializeCMA([D)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 697
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    if-gtz v2, :cond_0

    .line 700
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    double-to-int v2, v5

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 703
    :cond_0
    array-length v2, v1

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v7, v6, v7

    const/4 v8, 0x0

    aput v2, v6, v8

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v6, 0x0

    .line 704
    :goto_0
    array-length v9, v1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    if-ge v6, v9, :cond_2

    .line 707
    aget-object v9, v2, v6

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v10, v12, v6

    :goto_1
    aput-wide v10, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 709
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v6, v2, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 710
    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 713
    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    mul-double v14, v14, v12

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    const-wide v12, 0x3da5fd7fe1796495L    # 1.0E-11

    .line 714
    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    mul-double v14, v14, v12

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    .line 715
    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    const-wide v12, 0x3d3c25c268497682L    # 1.0E-13

    .line 716
    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    .line 719
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    div-int/2addr v2, v5

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v12, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    .line 720
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    .line 721
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v12 .. v17}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-interface {v2, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    invoke-interface {v2, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/16 v12, 0x0

    move-wide v14, v12

    move-wide/from16 v16, v14

    const/4 v2, 0x0

    .line 724
    :goto_2
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    if-ge v2, v9, :cond_3

    .line 725
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v9, v2, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    add-double v14, v14, v18

    mul-double v18, v18, v18

    add-double v16, v16, v18

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 729
    :cond_3
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-wide/from16 v18, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v8, v3, v14

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    mul-double v14, v14, v14

    div-double v14, v14, v16

    .line 730
    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    .line 733
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v8, v2

    div-double v8, v14, v8

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    add-double v8, v8, v16

    const/16 v20, 0x2

    add-int/lit8 v5, v2, 0x4

    move-wide/from16 v22, v8

    const/16 v21, 0x1

    int-to-double v7, v5

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v26, v14, v24

    move-wide/from16 v28, v3

    int-to-double v3, v2

    div-double v26, v26, v3

    add-double v7, v7, v26

    div-double v8, v22, v7

    iput-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    add-double v3, v14, v24

    int-to-double v7, v2

    add-double/2addr v7, v14

    add-double v7, v7, v18

    div-double/2addr v3, v7

    .line 735
    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v14, v14, v28

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v14, v2

    .line 736
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double v2, v2, v28

    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double v2, v2, v24

    add-double v2, v2, v28

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    int-to-double v7, v7

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double/2addr v7, v12

    div-double/2addr v4, v7

    sub-double v4, v28, v4

    invoke-static {v10, v11, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v2, v2, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    .line 740
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v3, v2

    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v3, v7

    int-to-double v9, v2

    add-double/2addr v9, v7

    mul-double v3, v3, v9

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v3, v7

    div-double v3, v24, v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v3, v28, v3

    sub-double v9, v7, v24

    div-double v11, v28, v7

    add-double/2addr v9, v11

    mul-double v9, v9, v24

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    mul-int v5, v5, v2

    int-to-double v11, v5

    add-double/2addr v11, v7

    div-double/2addr v9, v11

    .line 741
    invoke-static {v3, v4, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    .line 743
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    add-double/2addr v4, v7

    mul-double v2, v2, v4

    div-double v2, v2, v18

    move-wide/from16 v4, v28

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    .line 744
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v2, v4, v2

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v9, v9

    add-double/2addr v9, v7

    mul-double v4, v4, v9

    div-double v4, v4, v18

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    .line 745
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v7, v4

    mul-double v7, v7, v16

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v7, v28, v7

    sub-double v7, v28, v7

    const-wide/high16 v9, 0x4035000000000000L    # 21.0

    int-to-double v11, v4

    mul-double v11, v11, v9

    int-to-double v4, v4

    mul-double v11, v11, v4

    div-double v4, v28, v11

    add-double/2addr v7, v4

    mul-double v2, v2, v7

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    .line 748
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 749
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double v3, v28, v1

    invoke-interface {v6, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 750
    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 751
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 752
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 753
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 755
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v1, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 756
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 757
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v3, v4, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 758
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 759
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    mul-int/lit8 v1, v1, 0x1e

    int-to-double v1, v1

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    .line 760
    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    const/4 v8, 0x0

    .line 761
    :goto_3
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    if-ge v8, v1, :cond_4

    .line 762
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private static inverse([I)[I
    .locals 3

    .line 1397
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1398
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1399
    aget v2, p0, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1107
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1108
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1109
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1110
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1113
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static max(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1336
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 1337
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1338
    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpg-double v7, v0, v5

    if-gez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private static max([D)D
    .locals 6

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    .line 1370
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1371
    aget-wide v3, p0, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1353
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 1354
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1355
    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpl-double v7, v0, v5

    if-lez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private static min([D)D
    .locals 6

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    .line 1384
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1385
    aget-wide v3, p0, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    const/4 v0, 0x2

    .line 1263
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1265
    aget-object v2, v0, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    .line 655
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 656
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    if-eqz v3, :cond_0

    .line 657
    check-cast v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    goto :goto_1

    .line 660
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    if-eqz v3, :cond_1

    .line 661
    check-cast v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static push([DD)V
    .locals 3

    .line 929
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 930
    aget-wide v1, p0, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 932
    aput-wide p1, p0, v0

    return-void
.end method

.method private randn(I)[D
    .locals 4

    .line 1421
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1423
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    const/4 v0, 0x2

    .line 1434
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 1437
    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p1
.end method

.method private static repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1302
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 1303
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    mul-int p1, p1, v0

    mul-int p2, p2, v1

    const/4 v2, 0x2

    .line 1304
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    aput p1, v2, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    .line 1307
    aget-object v6, v2, v4

    rem-int v7, v4, v0

    rem-int v8, v5, v1

    invoke-interface {p0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1310
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static reverse([I)[I
    .locals 3

    .line 1409
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1410
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1411
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1181
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1182
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1183
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1184
    aget-object v4, v0, v2

    aget v5, p1, v3

    invoke-interface {p0, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    sub-double/2addr p2, p0

    div-double/2addr p2, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    double-to-int p2, p2

    const/4 p3, 0x2

    .line 1321
    new-array p3, p3, [I

    const/4 v0, 0x1

    aput v0, p3, v0

    const/4 v0, 0x0

    aput p2, p3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1324
    aget-object v2, p3, v1

    aput-wide p0, v2, v0

    add-double/2addr p0, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private sortedIndices([D)[I
    .locals 6

    .line 942
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 943
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 944
    new-instance v3, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 947
    array-length v2, p1

    new-array v2, v2, [I

    .line 948
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 949
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->access$100(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1121
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1122
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1123
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1124
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1135
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1136
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1137
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1138
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1139
    aget-object v6, v0, v2

    mul-double v4, v4, v4

    aput-wide v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 1210
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    .line 1211
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 1213
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1214
    invoke-interface {p0, v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1216
    :cond_0
    aget-object v5, v1, v0

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1151
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1152
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 1153
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1154
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v5, v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1157
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1196
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 1197
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 1198
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1199
    aget-object v4, v0, v2

    sub-int v5, v3, p1

    if-gt v2, v5, :cond_0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    goto :goto_2

    :cond_0
    const-wide/16 v5, 0x0

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private updateBD(D)V
    .locals 10

    .line 892
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double v4, v0, v2

    add-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_4

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    int-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v8

    add-double/2addr v0, v2

    add-double/2addr v0, p1

    div-double/2addr v4, v0

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double p1, p1

    div-double/2addr v4, p1

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    div-double/2addr v4, p1

    cmpg-double p1, v4, v8

    if-gez p1, :cond_4

    .line 895
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 897
    new-instance p1, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 898
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 899
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 900
    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 901
    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    const-wide v4, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double p1, v2, v6

    if-gtz p1, :cond_2

    const/4 p1, 0x0

    .line 902
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge p1, v0, :cond_1

    .line 903
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 904
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 907
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v4

    .line 908
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 909
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 911
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    mul-double v2, v2, v4

    cmpl-double v0, p1, v2

    if-lez v0, :cond_3

    .line 912
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v4

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    sub-double/2addr p1, v2

    .line 913
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 914
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 916
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 917
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 918
    iget-object p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_4
    return-void
.end method

.method private updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 14

    .line 830
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 831
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    const/4 v1, 0x1

    move-object/from16 v4, p5

    invoke-static {v4, v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 833
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-wide v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    move-wide v10, v2

    goto :goto_0

    .line 836
    :cond_0
    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v12, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    mul-double v10, v10, v12

    sub-double v12, v8, v12

    mul-double v10, v10, v12

    .line 837
    :goto_0
    iget-wide v12, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v12, v6, v12

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    sub-double/2addr v12, v2

    add-double/2addr v10, v12

    .line 838
    iget-boolean v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    if-eqz v5, :cond_2

    sub-double/2addr v6, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v6, v6, v2

    .line 840
    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double v6, v6, v2

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    iget-wide v12, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double v12, v12, v8

    add-double/2addr v2, v12

    div-double/2addr v6, v2

    .line 847
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v2

    .line 848
    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 849
    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const/4 v5, 0x0

    .line 850
    invoke-interface {v3, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v8

    .line 851
    invoke-static {v3, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    .line 852
    invoke-static {v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v12

    .line 853
    invoke-static {v3, v12}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 854
    invoke-static {v3, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 855
    invoke-static {v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inverse([I)[I

    move-result-object v8

    .line 856
    invoke-static {v3, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 858
    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v8, v5, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    const-wide v12, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    div-double/2addr v12, v8

    cmpl-double v5, v6, v12

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v12, v6

    .line 863
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v3, v5, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 864
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 865
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v12

    add-double/2addr v10, v5

    .line 867
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v7, v5

    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v5, v1, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v2, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    move-wide v2, v12

    goto :goto_2

    .line 876
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v4, v1, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    const-wide/16 v2, 0x0

    .line 883
    :goto_2
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateBD(D)V

    return-void
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 798
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v2

    mul-double v0, v0, v4

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 799
    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 800
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {p2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 804
    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 805
    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    iget p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    if-le p2, p1, :cond_1

    const/4 p1, 0x0

    .line 808
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 809
    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {p1, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 810
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 811
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return-void
.end method

.method private updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 11

    .line 775
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double v7, v5, v1

    mul-double v1, v1, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double v1, v1, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 777
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 778
    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v7, v3, v7

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v7, v8, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v0, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    div-double/2addr v0, v7

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v7, p1

    add-double/2addr v7, v3

    div-double v7, v5, v7

    const-wide v9, 0x3ff6666666666666L    # 1.4

    add-double/2addr v7, v9

    cmpg-double p1, v0, v7

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 781
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double/2addr v3, v1

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p1, :cond_1

    .line 783
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double/2addr v5, v1

    mul-double v1, v1, v5

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double/2addr v1, v3

    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return p1
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1292
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 30

    move-object/from16 v0, p0

    .line 499
    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkParameters()V

    .line 501
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/optimization/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 502
    new-instance v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V

    .line 503
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 505
    array-length v2, v1

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    .line 506
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->initializeCMA([D)V

    const/4 v7, 0x0

    .line 507
    iput v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    .line 508
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v1

    .line 509
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v3, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    .line 510
    new-instance v3, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v4

    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v5, :cond_0

    move-wide v8, v1

    goto :goto_0

    :cond_0
    neg-double v8, v1

    :goto_0
    invoke-direct {v3, v4, v8, v9}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    const/4 v8, 0x1

    .line 517
    iput v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-wide v10, v1

    move-object v12, v3

    const/4 v13, 0x0

    :goto_1
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    if-gt v1, v2, :cond_1a

    .line 519
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 520
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 521
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    new-array v14, v2, [D

    const/4 v2, 0x0

    .line 523
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    if-ge v2, v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 525
    :goto_3
    iget v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    add-int/2addr v15, v8

    if-ge v4, v15, :cond_3

    .line 526
    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v5, :cond_1

    .line 527
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/16 v16, 0x1

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    move-wide/from16 v17, v10

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    goto :goto_4

    :cond_1
    move-wide/from16 v17, v10

    const/16 v16, 0x1

    .line 530
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 533
    :goto_4
    iget v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    if-ge v4, v8, :cond_4

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_5

    .line 538
    :cond_2
    iget v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn(I)[D

    move-result-object v8

    invoke-interface {v3, v2, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v10, v17

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v10

    const/16 v16, 0x1

    .line 540
    :cond_4
    :goto_5
    invoke-static {v5, v7, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 542
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v4

    aput-wide v4, v14, v2
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, v17

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    move-wide/from16 v17, v10

    const/16 v16, 0x1

    .line 548
    invoke-direct {v0, v14}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v4

    .line 550
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 551
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 552
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 553
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v4, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 554
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 555
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v1

    .line 556
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v9, :cond_6

    .line 557
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_6

    .line 559
    :cond_6
    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    .line 562
    :goto_6
    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    move-wide/from16 v19, v8

    const/4 v1, 0x0

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    div-double/2addr v10, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v7

    move-object v3, v2

    const/4 v5, 0x0

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    mul-double v10, v10, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double/2addr v10, v1

    invoke-static {v7, v8, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double v8, v19, v1

    iput-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 563
    aget v1, v4, v5

    aget-wide v7, v14, v1

    .line 564
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget v1, v4, v1

    aget-wide v9, v14, v1

    cmpl-double v1, v17, v7

    if-lez v1, :cond_9

    .line 568
    new-instance v2, Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-static {v6, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v5

    iget-boolean v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v11, :cond_7

    move-object v11, v14

    move-wide v13, v7

    goto :goto_7

    :cond_7
    move-object v11, v14

    neg-double v13, v7

    :goto_7
    invoke-direct {v2, v5, v13, v14}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 570
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v5

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    invoke-interface {v5, v13, v2, v12}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    return-object v2

    :cond_8
    move-wide/from16 v17, v7

    goto :goto_8

    :cond_9
    move-object v11, v14

    move-object v2, v12

    move-object v12, v13

    .line 577
    :goto_8
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    const-wide/16 v19, 0x0

    cmpl-double v5, v13, v19

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v5, :cond_a

    goto :goto_9

    :cond_a
    neg-double v13, v13

    :goto_9
    cmpg-double v5, v7, v13

    if-gez v5, :cond_b

    move-object/from16 v21, v2

    goto/16 :goto_e

    .line 580
    :cond_b
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    .line 581
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v13, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v13

    const/4 v14, 0x0

    .line 582
    :goto_a
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v21, v2

    if-ge v14, v1, :cond_e

    .line 583
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    aget-wide v22, v13, v14

    move-wide/from16 v24, v1

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    aget-wide v4, v23, v14

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    mul-double v1, v1, v24

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    cmpl-double v24, v1, v4

    if-lez v24, :cond_c

    goto :goto_b

    .line 586
    :cond_c
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v1, v1, -0x1

    if-lt v14, v1, :cond_d

    goto/16 :goto_e

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto :goto_a

    :cond_e
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_b
    const/4 v5, 0x0

    .line 590
    :goto_c
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge v5, v1, :cond_10

    .line 591
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    aget-wide v13, v23, v5

    mul-double v1, v1, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    cmpl-double v4, v1, v13

    if-lez v4, :cond_f

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 595
    :cond_10
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min([D)D

    move-result-wide v1

    .line 596
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max([D)D

    move-result-wide v4

    .line 597
    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    const/4 v14, 0x2

    if-le v13, v14, :cond_11

    invoke-static {v4, v5, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v23

    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v25

    sub-double v23, v23, v25

    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    cmpg-double v26, v23, v14

    if-gez v26, :cond_11

    goto :goto_e

    .line 602
    :cond_11
    iget v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    array-length v15, v15

    if-le v14, v15, :cond_12

    sub-double v14, v4, v1

    move-wide/from16 v26, v14

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    cmpg-double v15, v26, v13

    if-gez v15, :cond_12

    goto :goto_e

    .line 607
    :cond_12
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v13

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v26

    div-double v13, v13, v26

    const-wide v26, 0x416312d000000000L    # 1.0E7

    cmpl-double v15, v13, v26

    if-lez v15, :cond_13

    goto :goto_e

    .line 611
    :cond_13
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v13

    if-eqz v13, :cond_15

    .line 612
    new-instance v13, Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    iget-boolean v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v15, :cond_14

    move-wide v14, v7

    goto :goto_d

    :cond_14
    neg-double v14, v7

    :goto_d
    invoke-direct {v13, v3, v14, v15}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v12, :cond_16

    .line 615
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v3

    iget v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    invoke-interface {v3, v14, v13, v12}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_e
    return-object v21

    :cond_15
    move-object v13, v12

    .line 622
    :cond_16
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v14, v3

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    div-double v14, v14, v26

    const-wide v26, 0x3fb999999999999aL    # 0.1

    add-double v14, v14, v26

    double-to-int v3, v14

    aget v3, v22, v3

    aget-wide v14, v11, v3

    cmpl-double v3, v17, v14

    if-nez v3, :cond_17

    .line 623
    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    const-wide v26, 0x3fc999999999999aL    # 0.2

    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v28, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double/2addr v11, v9

    add-double v11, v11, v26

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v9

    mul-double v14, v14, v9

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    goto :goto_f

    :cond_17
    move-wide/from16 v28, v9

    const-wide v26, 0x3fc999999999999aL    # 0.2

    .line 625
    :goto_f
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    const/4 v9, 0x2

    if-le v3, v9, :cond_18

    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    sub-double/2addr v3, v1

    cmpl-double v1, v3, v19

    if-nez v1, :cond_18

    .line 627
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double/2addr v3, v9

    add-double v3, v3, v26

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 630
    :cond_18
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v1, v7, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    sub-double v9, v28, v7

    .line 631
    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->setValueRange(D)V

    .line 632
    iget-boolean v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    if-eqz v1, :cond_19

    .line 633
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_19
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-wide/from16 v10, v17

    move-object/from16 v12, v21

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :catch_0
    :cond_1a
    return-object v12
.end method

.method public getStatisticsDHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsFitnessHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsMeanHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsSigmaHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0

    .line 489
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    return-object p1
.end method
