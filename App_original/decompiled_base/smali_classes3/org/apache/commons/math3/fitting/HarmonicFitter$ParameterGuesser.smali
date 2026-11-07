.class public Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "HarmonicFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/HarmonicFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final a:D

.field private final omega:D

.field private final phi:D


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v0

    const/4 v2, 0x0

    .line 207
    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    .line 208
    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    .line 210
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

    return-void

    .line 200
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, p1, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 35

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 274
    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 283
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    .line 284
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    const/4 v9, 0x1

    move-wide/from16 v21, v3

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    .line 288
    :goto_0
    array-length v7, v0

    if-ge v10, v7, :cond_0

    .line 292
    aget-object v7, v0, v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    .line 293
    aget-object v29, v0, v10

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v29

    sub-double v21, v7, v21

    sub-double v31, v29, v5

    mul-double v33, v5, v5

    mul-double v5, v5, v29

    add-double v33, v33, v5

    mul-double v5, v29, v29

    add-double v33, v33, v5

    mul-double v33, v33, v21

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double v33, v33, v5

    mul-double v31, v31, v31

    div-double v31, v31, v21

    sub-double v5, v7, v3

    add-double v23, v23, v33

    add-double v25, v25, v31

    mul-double v21, v5, v5

    add-double v19, v19, v21

    mul-double v21, v23, v23

    add-double v11, v11, v21

    mul-double v21, v5, v23

    add-double v15, v15, v21

    mul-double v5, v5, v25

    add-double/2addr v13, v5

    mul-double v5, v23, v25

    add-double v17, v17, v5

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v21, v7

    move-wide/from16 v5, v29

    goto :goto_0

    :cond_0
    mul-double v3, v11, v13

    mul-double v5, v15, v17

    sub-double/2addr v3, v5

    mul-double v13, v13, v15

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    mul-double v19, v19, v11

    mul-double v15, v15, v15

    sub-double v19, v19, v15

    div-double/2addr v3, v13

    cmpg-double v5, v3, v27

    if-ltz v5, :cond_3

    div-double v5, v13, v19

    cmpg-double v7, v5, v27

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v0, v13, v27

    if-eqz v0, :cond_2

    .line 347
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 348
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v1, v9

    return-object v1

    .line 344
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 319
    :cond_3
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v9

    .line 322
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    cmpl-double v5, v3, v27

    if-eqz v5, :cond_7

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v5, v3

    .line 326
    aput-wide v5, v1, v9

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 330
    :goto_2
    array-length v7, v0

    if-ge v9, v7, :cond_6

    .line 331
    aget-object v7, v0, v9

    invoke-virtual {v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    cmpg-double v10, v7, v3

    if-gez v10, :cond_4

    move-wide v3, v7

    :cond_4
    cmpl-double v10, v7, v5

    if-lez v10, :cond_5

    move-wide v5, v7

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v3

    mul-double v5, v5, v7

    .line 339
    aput-wide v5, v1, v2

    return-object v1

    .line 324
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0
.end method

.method private guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 365
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    .line 366
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    move-wide v9, v7

    .line 367
    :goto_0
    array-length v11, v1

    if-ge v2, v11, :cond_0

    .line 371
    aget-object v11, v1, v2

    invoke-virtual {v11}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v11

    .line 372
    aget-object v13, v1, v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v13

    sub-double v5, v13, v5

    sub-double v3, v11, v3

    div-double/2addr v5, v3

    .line 375
    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    mul-double v3, v3, v11

    .line 376
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v15

    .line 377
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    move/from16 v17, v2

    .line 378
    iget-wide v1, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    mul-double v18, v1, v13

    mul-double v18, v18, v15

    mul-double v20, v5, v3

    sub-double v18, v18, v20

    add-double v9, v9, v18

    mul-double v1, v1, v13

    mul-double v1, v1, v3

    mul-double v5, v5, v15

    add-double/2addr v1, v5

    add-double/2addr v7, v1

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, p1

    move-wide v3, v11

    move-wide v5, v13

    goto :goto_0

    :cond_0
    neg-double v1, v7

    .line 382
    invoke-static {v1, v2, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 9

    .line 234
    invoke-virtual {p1}, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    const/4 v0, 0x0

    .line 239
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 240
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 242
    aget-object v2, p1, v1

    .line 243
    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    .line 246
    aget-object v3, p1, v0

    :goto_1
    if-ltz v0, :cond_1

    .line 247
    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 248
    aput-object v3, p1, v4

    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_0

    .line 250
    aget-object v3, p1, v4

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 253
    aput-object v2, p1, v0

    .line 254
    aget-object v0, p1, v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 224
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

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
