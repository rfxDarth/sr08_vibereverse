.class public Lorg/apache/commons/math3/random/StableRandomGenerator;
.super Ljava/lang/Object;
.source "StableRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final zeta:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, p2, v2

    if-gtz v4, :cond_2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v7, p4, v5

    if-ltz v7, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, p4, v5

    if-gtz v7, :cond_1

    .line 75
    iput-object p1, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 76
    iput-wide p2, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    .line 77
    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    if-gez v4, :cond_0

    cmpl-double p1, p4, v0

    if-eqz p1, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p2, p2, v0

    div-double/2addr p2, v2

    .line 79
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide p1

    mul-double p4, p4, p1

    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    return-void

    .line 81
    :cond_0
    iput-wide v0, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    return-void

    .line 71
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 66
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p4, p2, p3, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 62
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 19

    move-object/from16 v0, p0

    .line 92
    iget-object v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    neg-double v1, v1

    .line 93
    iget-object v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    .line 96
    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_0

    mul-double v1, v1, v9

    .line 97
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    return-wide v1

    .line 103
    :cond_0
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v11, v13

    if-nez v17, :cond_2

    cmpl-double v5, v7, v15

    if-nez v5, :cond_1

    .line 106
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v1

    return-wide v1

    :cond_1
    sub-double v5, v15, v7

    mul-double v5, v5, v3

    .line 108
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    div-double v5, v15, v5

    sub-double/2addr v5, v15

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    div-double v5, v15, v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1

    .line 115
    :cond_2
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 117
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    sub-double/2addr v11, v15

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v17, v11, v13

    if-lez v17, :cond_3

    .line 118
    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    mul-double v5, v5, v3

    sub-double/2addr v3, v5

    .line 120
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double v11, v11, v5

    add-double/2addr v9, v11

    div-double/2addr v9, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    mul-double v11, v11, v3

    add-double/2addr v5, v11

    mul-double v9, v9, v5

    mul-double v1, v1, v7

    iget-wide v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    sub-double/2addr v15, v3

    div-double v3, v15, v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    div-double/2addr v9, v1

    return-wide v9

    .line 124
    :cond_3
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    mul-double v11, v11, v3

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v11, v13

    .line 125
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v3

    mul-double v3, v3, v11

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    mul-double v1, v1, v13

    mul-double v1, v1, v7

    div-double/2addr v1, v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    mul-double v5, v5, v1

    sub-double/2addr v3, v5

    const-wide v1, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double v3, v3, v1

    .line 128
    iget-wide v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    cmpl-double v5, v1, v15

    if-eqz v5, :cond_4

    .line 129
    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    mul-double v1, v1, v17

    div-double/2addr v1, v9

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v1

    mul-double v5, v5, v1

    add-double/2addr v3, v5

    :cond_4
    return-wide v3
.end method
