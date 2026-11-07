.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D

.field private partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>([D)V
    .locals 7

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 414
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 417
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v3

    aget-wide v5, p1, v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D
    .locals 0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method

.method private apply([D[D[[D)D
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 456
    aget-object v6, p3, v3

    aget-wide v7, v6, v5

    aget-wide v9, p1, v3

    mul-double v7, v7, v9

    aget-wide v9, p2, v5

    mul-double v7, v7, v9

    add-double/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private computePartialDerivatives()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 518
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 519
    new-array v6, v1, [I

    aput v4, v6, v3

    aput v4, v6, v5

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 520
    new-array v7, v1, [I

    aput v4, v7, v3

    aput v4, v7, v5

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 521
    new-array v8, v1, [I

    aput v4, v8, v3

    aput v4, v8, v5

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 522
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v4, v1, v5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_0

    .line 526
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v10, v10, v3

    aget-wide v11, v10, v9

    .line 527
    aget-object v10, v2, v3

    int-to-double v13, v3

    mul-double v13, v13, v11

    aput-wide v13, v10, v9

    .line 528
    aget-object v13, v6, v3

    int-to-double v14, v9

    mul-double v11, v11, v14

    aput-wide v11, v13, v9

    .line 529
    aget-object v11, v7, v3

    add-int/lit8 v12, v3, -0x1

    int-to-double v4, v12

    aget-wide v16, v10, v9

    mul-double v4, v4, v16

    aput-wide v4, v11, v9

    .line 530
    aget-object v4, v8, v3

    add-int/lit8 v5, v9, -0x1

    int-to-double v11, v5

    aget-wide v16, v13, v9

    mul-double v11, v11, v16

    aput-wide v11, v4, v9

    .line 531
    aget-object v4, v1, v3

    aget-wide v11, v10, v9

    mul-double v14, v14, v11

    aput-wide v14, v4, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_0

    .line 535
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 547
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 559
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;

    invoke-direct {v2, v0, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 570
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;

    invoke-direct {v2, v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 581
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-void
.end method


# virtual methods
.method public partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public value(DD)D
    .locals 10

    const/4 v0, 0x1

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmpg-double v6, p1, v4

    if-ltz v6, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, p1, v6

    if-gtz v8, :cond_1

    cmpg-double v8, p3, v4

    if-ltz v8, :cond_0

    cmpl-double v4, p3, v6

    if-gtz v4, :cond_0

    mul-double v3, p1, p1

    mul-double v8, v3, p1

    const/4 v1, 0x4

    .line 435
    new-array v5, v1, [D

    aput-wide v6, v5, v2

    aput-wide p1, v5, v0

    const/4 p1, 0x2

    aput-wide v3, v5, p1

    const/4 p2, 0x3

    aput-wide v8, v5, p2

    mul-double v3, p3, p3

    mul-double v8, v3, p3

    .line 439
    new-array v1, v1, [D

    aput-wide v6, v1, v2

    aput-wide p3, v1, v0

    aput-wide v3, v1, p1

    aput-wide v8, v1, p2

    .line 441
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    invoke-direct {p0, v5, v1, p1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide p1

    return-wide p1

    .line 430
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 427
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p3
.end method
