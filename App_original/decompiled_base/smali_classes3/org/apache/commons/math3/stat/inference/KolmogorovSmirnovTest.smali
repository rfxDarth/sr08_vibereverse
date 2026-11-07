.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovTest.java"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8


# instance fields
.field private final rng:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private checkArray([D)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 599
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    return-void

    .line 600
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v4, v2, p1

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 597
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private copyPartition([D[D[III)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int v3, p4, p5

    if-ge v0, v3, :cond_1

    if-ge v1, p4, :cond_0

    .line 772
    aget v3, p3, v1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    int-to-double v4, v0

    .line 773
    aput-wide v4, p1, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    int-to-double v4, v0

    .line 775
    aput-wide v4, p2, v2

    move v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double v0, v0, p1

    .line 511
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p2, p1, 0x2

    add-int/lit8 p3, p2, -0x1

    int-to-double v2, p1

    sub-double v5, v2, v0

    const/4 p1, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v0

    if-gez v2, :cond_9

    .line 519
    :try_start_0
    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v9, 0x2710

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    :try_start_1
    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v9, 0x2710

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 524
    :catch_1
    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v9, 0x2710

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    :goto_0
    const/4 v0, 0x2

    .line 527
    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    aput p3, v1, p1

    const-class v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p3, :cond_1

    sub-int v6, v3, v5

    add-int/2addr v6, v2

    if-gez v6, :cond_0

    .line 535
    aget-object v6, v1, v3

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v5

    goto :goto_3

    .line 537
    :cond_0
    aget-object v6, v1, v3

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 546
    :cond_2
    new-array v3, p3, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 547
    aput-object v4, v3, p1

    const/4 v5, 0x1

    :goto_4
    if-ge v5, p3, :cond_3

    add-int/lit8 v6, v5, -0x1

    .line 549
    aget-object v6, v3, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-ge v5, p3, :cond_4

    .line 556
    aget-object v6, v1, v5

    aget-object v7, v6, p1

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, p1

    add-int/lit8 v6, p2, -0x2

    .line 557
    aget-object v6, v1, v6

    aget-object v7, v6, v5

    sub-int v8, p3, v5

    sub-int/2addr v8, v2

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 564
    :cond_4
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v3

    if-ne v3, v2, :cond_5

    sub-int/2addr p2, v0

    .line 565
    aget-object p2, v1, p2

    aget-object v3, p2, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aput-object v3, p2, p1

    :cond_5
    const/4 p2, 0x0

    :goto_6
    if-ge p2, p3, :cond_8

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, p2, 0x1

    if-ge v3, v4, :cond_7

    sub-int v4, p2, v3

    add-int/2addr v4, v2

    if-lez v4, :cond_6

    const/4 v5, 0x2

    :goto_8
    if-gt v5, v4, :cond_6

    .line 580
    aget-object v6, v1, p2

    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    move p2, v4

    goto :goto_6

    .line 585
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object p1

    .line 515
    :cond_9
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method private exactK(DI)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double v0, v0, p1

    .line 443
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 445
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 446
    invoke-interface {p1, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    .line 448
    invoke-interface {p1, v0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    :goto_0
    if-gt p2, p3, :cond_0

    .line 451
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    const/4 p3, 0x4

    .line 459
    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method private roundedK(DI)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double v2, v0, p1

    .line 475
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 476
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result p2

    .line 483
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, p2, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_0

    .line 486
    invoke-interface {p1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v7

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 489
    :cond_1
    invoke-interface {v3, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v2, p2

    .line 490
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    :goto_2
    if-gt p2, p3, :cond_2

    int-to-double v4, p2

    div-double/2addr v4, v0

    mul-double v2, v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-wide v2
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 6

    int-to-double v0, p4

    int-to-double p3, p3

    mul-double v2, v0, p3

    add-double/2addr v0, p3

    div-double/2addr v2, v0

    .line 710
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    mul-double v1, p1, p3

    const-wide v3, 0x3bc79ca10c924223L    # 1.0E-20

    const v5, 0x186a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, p1

    return-wide p3
.end method

.method public cdf(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public cdf(DIZ)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v4

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpg-double v10, v6, p1

    if-gez v10, :cond_2

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2

    mul-double p1, p1, v8

    sub-double/2addr p1, v4

    const/4 p4, 0x1

    :goto_0
    if-gt p4, p3, :cond_1

    int-to-double v0, p4

    mul-double v0, v0, p1

    mul-double v2, v2, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    sub-double v4, v2, v4

    cmpg-double v6, v4, p1

    if-gtz v6, :cond_3

    cmpg-double v4, p1, v2

    if-gez v4, :cond_3

    sub-double p1, v2, p1

    .line 421
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double p1, p1, v8

    sub-double/2addr v2, p1

    return-wide v2

    :cond_3
    cmpg-double v0, v2, p1

    if-gtz v0, :cond_4

    return-wide v2

    :cond_4
    if-eqz p4, :cond_5

    .line 425
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactK(DI)D

    move-result-wide p1

    return-wide p1

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->roundedK(DI)D

    move-result-wide p1

    return-wide p1
.end method

.method public cdfExact(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public exactP(DIIZ)D
    .locals 14

    move/from16 v0, p3

    move/from16 v1, p4

    add-int v2, v0, v1

    .line 662
    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->combinationsIterator(II)Ljava/util/Iterator;

    move-result-object v3

    .line 664
    new-array v4, v0, [D

    .line 665
    new-array v1, v1, [D

    const-wide/16 v5, 0x0

    .line 666
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 668
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v2, :cond_2

    if-ge v9, v0, :cond_1

    .line 673
    aget v11, v7, v9

    if-ne v11, v8, :cond_1

    add-int/lit8 v11, v9, 0x1

    int-to-double v12, v8

    .line 674
    aput-wide v12, v4, v9

    move v9, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v10, 0x1

    int-to-double v12, v8

    .line 676
    aput-wide v12, v1, v10

    move v10, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {p0, v4, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmpl-double v11, v7, p1

    if-lez v11, :cond_3

    :goto_3
    add-long/2addr v5, v9

    goto :goto_0

    :cond_3
    if-nez v11, :cond_0

    if-nez p5, :cond_0

    goto :goto_3

    :cond_4
    long-to-double v3, v5

    .line 686
    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v3, v0

    return-wide v3
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 13

    .line 186
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 187
    array-length v0, p2

    int-to-double v1, v0

    .line 189
    new-array v3, v0, [D

    const/4 v4, 0x0

    .line 190
    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    const-wide/16 v4, 0x0

    const/4 p2, 0x1

    :goto_0
    if-gt p2, v0, :cond_1

    add-int/lit8 v6, p2, -0x1

    .line 194
    aget-wide v7, v3, v6

    invoke-interface {p1, v7, v8}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    int-to-double v9, v6

    div-double/2addr v9, v1

    sub-double v9, v7, v9

    int-to-double v11, p2

    div-double/2addr v11, v1

    sub-double/2addr v11, v7

    .line 195
    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 14

    .line 281
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    move-object/from16 v0, p2

    .line 282
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 284
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v1

    .line 285
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    .line 286
    invoke-static {v1}, Ljava/util/Arrays;->sort([D)V

    .line 287
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 288
    array-length v2, v1

    .line 289
    array-length v3, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ge v7, v2, :cond_2

    int-to-double v10, v7

    add-double/2addr v10, v8

    int-to-double v12, v2

    div-double/2addr v10, v12

    .line 296
    aget-wide v12, v1, v7

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v12

    if-ltz v12, :cond_0

    int-to-double v12, v12

    add-double/2addr v12, v8

    goto :goto_1

    :cond_0
    neg-int v12, v12

    int-to-double v12, v12

    sub-double/2addr v12, v8

    :goto_1
    int-to-double v8, v3

    div-double/2addr v12, v8

    sub-double/2addr v10, v12

    .line 298
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v4

    if-lez v10, :cond_1

    move-wide v4, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v6, v3, :cond_5

    int-to-double v10, v6

    add-double/2addr v10, v8

    int-to-double v12, v3

    div-double/2addr v10, v12

    .line 306
    aget-wide v12, v0, v6

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v7

    if-ltz v7, :cond_3

    int-to-double v12, v7

    add-double/2addr v12, v8

    move-wide p1, v8

    int-to-double v8, v2

    div-double/2addr v12, v8

    goto :goto_3

    :cond_3
    move-wide p1, v8

    neg-int v7, v7

    int-to-double v7, v7

    sub-double/2addr v7, p1

    int-to-double v12, v2

    div-double v12, v7, v12

    :goto_3
    sub-double/2addr v12, v10

    .line 308
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpl-double v9, v7, v4

    if-lez v9, :cond_4

    move-wide v4, v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move-wide v8, p1

    goto :goto_2

    :cond_5
    return-wide v4
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 2

    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v0

    array-length p1, p2

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 1

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 8

    .line 238
    array-length v0, p1

    array-length v1, p2

    mul-int v0, v0, v1

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v3

    array-length v5, p1

    array-length v6, p2

    move-object v2, p0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide p1

    return-wide p1

    :cond_0
    move v5, p3

    .line 241
    array-length p3, p1

    array-length v0, p2

    mul-int p3, p3, v0

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_1

    .line 242
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v1

    array-length v3, p1

    array-length v4, p2

    const v6, 0xf4240

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->monteCarloP(DIIZI)D

    move-result-wide p1

    return-wide p1

    :cond_1
    move-object v0, p0

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v1

    array-length p1, p1

    array-length p2, p2

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 6

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    cmpg-double v5, p3, v0

    if-lez v5, :cond_1

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_1

    .line 348
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 346
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public ksSum(DDI)D
    .locals 15

    move/from16 v0, p5

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    mul-double v1, v1, p1

    mul-double v1, v1, p1

    const/4 v3, -0x1

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v10, v4

    const/4 v12, -0x1

    :goto_0
    cmpl-double v13, v8, p3

    if-lez v13, :cond_0

    int-to-long v8, v0

    cmp-long v13, v10, v8

    if-gez v13, :cond_0

    long-to-double v8, v10

    mul-double v13, v1, v8

    mul-double v13, v13, v8

    .line 626
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    int-to-double v13, v12

    mul-double v13, v13, v8

    add-double/2addr v6, v13

    mul-int/lit8 v12, v12, -0x1

    add-long/2addr v10, v4

    goto :goto_0

    :cond_0
    int-to-long v1, v0

    cmp-long v3, v10, v1

    if-eqz v3, :cond_1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v0

    return-wide v6

    .line 632
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public monteCarloP(DIIZI)D
    .locals 12

    move/from16 v5, p4

    move/from16 v6, p6

    add-int v0, v5, p3

    .line 733
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v3

    .line 734
    new-array v1, p3, [D

    .line 735
    new-array v2, v5, [D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    move-object v0, p0

    move v4, p3

    .line 738
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->copyPartition([D[D[III)V

    .line 739
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v10

    cmpl-double v5, v10, p1

    if-lez v5, :cond_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    .line 745
    :cond_1
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v3, v5}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 746
    invoke-static {v3, v7, p3}, Ljava/util/Arrays;->sort([III)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p4

    goto :goto_0

    :cond_2
    int-to-double p1, v9

    int-to-double v1, v6

    div-double/2addr p1, v1

    return-wide p1
.end method
