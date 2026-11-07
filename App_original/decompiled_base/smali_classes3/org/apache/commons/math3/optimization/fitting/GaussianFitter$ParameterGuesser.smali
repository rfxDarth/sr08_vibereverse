.class public Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "GaussianFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final mean:D

.field private final norm:D

.field private final sigma:D


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 152
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object p1

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->basicGuess([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D

    move-result-object p1

    .line 159
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->norm:D

    .line 160
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->mean:D

    const/4 v0, 0x2

    .line 161
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sigma:D

    return-void

    .line 153
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 150
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private basicGuess([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D
    .locals 16

    .line 233
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->findMaxY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I

    move-result v2

    .line 234
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    .line 235
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    sub-double v0, v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v10

    add-double v4, v6, v0

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 240
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v14

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    sub-double/2addr v1, v14

    goto :goto_0

    .line 245
    :catch_0
    array-length v0, v1

    sub-int/2addr v0, v13

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    aget-object v0, v1, v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v0

    sub-double v1, v2, v0

    .line 247
    :goto_0
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    mul-double v3, v3, v10

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v10

    div-double/2addr v1, v3

    const/4 v0, 0x3

    .line 249
    new-array v0, v0, [D

    aput-wide v6, v0, v12

    aput-wide v8, v0, v13

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    return-object v0
.end method

.method private findMaxY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 260
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 261
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getInterpolationPointsForY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p3, :cond_4

    :goto_0
    add-int v0, p2, p3

    if-gez p3, :cond_0

    if-ltz v0, :cond_3

    goto :goto_1

    .line 328
    :cond_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 330
    :goto_1
    aget-object v0, p1, p2

    add-int/2addr p2, p3

    .line 331
    aget-object v1, p1, p2

    .line 332
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    move-object v2, p0

    move-wide v3, p4

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->isBetween(DDD)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p4, 0x2

    if-gez p3, :cond_1

    .line 334
    new-array p3, p4, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v1, p3, p2

    aput-object v0, p3, p1

    return-object p3

    .line 336
    :cond_1
    new-array p3, p4, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v0, p3, p2

    aput-object v1, p3, p1

    return-object p3

    :cond_2
    move-wide p4, v3

    goto :goto_0

    :cond_3
    move-wide v3, p4

    .line 344
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-wide/high16 p3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-wide/high16 p4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 325
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p1
.end method

.method private interpolateXAtY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 290
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->getInterpolationPointsForY([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object p1

    const/4 p2, 0x0

    .line 292
    aget-object p2, p1, p2

    const/4 p3, 0x1

    .line 293
    aget-object p1, p1, p3

    .line 294
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v0

    cmpl-double p3, v0, p4

    if-nez p3, :cond_0

    .line 295
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide p1

    return-wide p1

    .line 297
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v0

    cmpl-double p3, v0, p4

    if-nez p3, :cond_1

    .line 298
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide p1

    return-wide p1

    .line 300
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    sub-double/2addr p4, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double p4, p4, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide p1

    sub-double/2addr v2, p1

    div-double/2addr p4, v2

    add-double/2addr v0, p4

    return-wide v0

    .line 288
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p1
.end method

.method private isBetween(DDD)Z
    .locals 1

    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    cmpg-double v0, p1, p5

    if-lez v0, :cond_1

    :cond_0
    cmpl-double v0, p1, p5

    if-ltz v0, :cond_2

    cmpg-double p5, p1, p3

    if-gtz p5, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 1

    .line 185
    invoke-virtual {p1}, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 186
    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;-><init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;)V

    .line 221
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->norm:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->mean:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sigma:D

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method
