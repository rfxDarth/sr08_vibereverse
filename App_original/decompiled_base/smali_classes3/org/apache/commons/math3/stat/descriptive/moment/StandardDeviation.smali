.class public Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "StandardDeviation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f807d2658822864L


# instance fields
.field private variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 78
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 92
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 107
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 275
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->setData([D)V

    .line 278
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .locals 1

    .line 258
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;-><init>()V

    .line 260
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    return-object v0
.end method

.method public evaluate([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getN()J
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    return-void
.end method

.method public isBiasCorrected()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected()Z

    move-result v0

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setBiasCorrected(Z)V

    return-void
.end method
