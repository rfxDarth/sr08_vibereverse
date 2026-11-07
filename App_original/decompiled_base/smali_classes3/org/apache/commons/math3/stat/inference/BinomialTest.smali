.class public Lorg/apache/commons/math3/stat/inference/BinomialTest;
.super Ljava/lang/Object;
.source "BinomialTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D
    .locals 8

    if-ltz p1, :cond_b

    if-ltz p2, :cond_a

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-double v4, p3, v0

    if-ltz v4, :cond_9

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, p3, v4

    if-gtz v6, :cond_9

    const/4 v6, 0x2

    if-lt p1, p2, :cond_8

    if-eqz p5, :cond_7

    .line 123
    new-instance v7, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    invoke-direct {v7, p1, p3, p4}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(ID)V

    .line 124
    sget-object p3, Lorg/apache/commons/math3/stat/inference/BinomialTest$1;->$SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis:[I

    invoke-virtual {p5}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->ordinal()I

    move-result p4

    aget p3, p3, p4

    if-eq p3, v3, :cond_6

    if-eq p3, v6, :cond_5

    const/4 p4, 0x3

    if-ne p3, p4, :cond_4

    .line 135
    :cond_0
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide p3

    .line 136
    invoke-virtual {v7, p1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v3

    cmpl-double p5, p3, v3

    if-nez p5, :cond_1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v3

    add-double/2addr v0, p3

    add-int/lit8 v2, v2, 0x1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    cmpg-double p5, p3, v3

    if-gez p5, :cond_2

    add-double/2addr v0, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-double/2addr v0, v3

    goto :goto_0

    :goto_1
    if-gt v2, p2, :cond_3

    if-ge p1, p2, :cond_0

    :cond_3
    return-wide v0

    .line 156
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, p4, [Ljava/lang/Object;

    aput-object p5, p3, v2

    sget-object p4, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object p4, p3, v3

    sget-object p4, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object p4, p3, v6

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 128
    :cond_5
    invoke-virtual {v7, p2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide p1

    return-wide p1

    :cond_6
    sub-int/2addr p2, v3

    .line 126
    invoke-virtual {v7, p2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide p1

    sub-double/2addr v4, p1

    return-wide v4

    .line 120
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 115
    :cond_8
    new-instance p3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p5, v6, [Ljava/lang/Object;

    aput-object p1, p5, v2

    aput-object p2, p5, v3

    invoke-direct {p3, p4, p5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p3

    .line 112
    :cond_9
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 109
    :cond_a
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 106
    :cond_b
    new-instance p2, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method

.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;D)Z
    .locals 0

    .line 64
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/stat/inference/BinomialTest;->binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D

    move-result-wide p1

    cmpg-double p3, p1, p6

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
