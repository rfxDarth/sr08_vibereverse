.class public Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Variance.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x7e7431d0a4eb983aL


# instance fields
.field protected incMoment:Z

.field private isBiasCorrected:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 99
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 114
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 153
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 126
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 127
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 141
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 620
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 621
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setData([D)V

    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 624
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 625
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    iput-boolean p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .locals 1

    .line 604
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 606
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    return-object v0
.end method

.method public evaluate([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 232
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide v0

    return-wide v0

    .line 230
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public evaluate([DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 457
    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DDII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    return-wide v0

    :cond_0
    if-le p5, v2, :cond_3

    move v4, p4

    move-wide v2, v0

    :goto_0
    add-int v5, p4, p5

    if-ge v4, v5, :cond_1

    .line 416
    aget-wide v5, p1, v4

    sub-double/2addr v5, p2

    mul-double v7, v5, v5

    add-double/2addr v0, v7

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double p1, p5

    .line 421
    iget-boolean p3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz p3, :cond_2

    mul-double v2, v2, v2

    div-double/2addr v2, p1

    sub-double/2addr v0, v2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p3

    :goto_1
    div-double/2addr v0, p1

    return-wide v0

    :cond_2
    mul-double v2, v2, v2

    div-double/2addr v2, p1

    sub-double/2addr v0, v2

    goto :goto_1

    :cond_3
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public evaluate([DII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-le p3, v0, :cond_1

    .line 266
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 267
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 268
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public evaluate([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 374
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 582
    array-length v6, p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DDII)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 511
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    return-wide v5

    :cond_0
    if-le v4, v7, :cond_4

    move v7, v3

    move-wide v8, v5

    move-wide v10, v8

    :goto_0
    add-int v12, v3, v4

    if-ge v7, v12, :cond_1

    .line 519
    aget-wide v12, v1, v7

    sub-double v12, v12, p3

    .line 520
    aget-wide v14, v2, v7

    mul-double v16, v12, v12

    mul-double v16, v16, v14

    add-double v8, v8, v16

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v12, :cond_2

    .line 526
    aget-wide v13, v2, v3

    add-double/2addr v5, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 529
    :cond_2
    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v1, :cond_3

    mul-double v10, v10, v10

    div-double/2addr v10, v5

    sub-double/2addr v8, v10

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v1

    :goto_2
    div-double/2addr v8, v5

    return-wide v8

    :cond_3
    mul-double v10, v10, v10

    div-double/2addr v10, v5

    sub-double/2addr v8, v10

    goto :goto_2

    :cond_4
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public evaluate([D[DII)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->test([D[DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-le p4, v0, :cond_1

    .line 326
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 327
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 328
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getN()J
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 6

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 186
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    :goto_0
    div-double/2addr v0, v2

    return-wide v0

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->n:J

    long-to-double v2, v2

    goto :goto_0
.end method

.method public increment(D)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    :cond_0
    return-void
.end method

.method public isBiasCorrected()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 0

    .line 596
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method
