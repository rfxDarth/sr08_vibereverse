.class public Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Mean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x11fc78ebba85144cL


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 82
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 103
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->setData([D)V

    .line 282
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 283
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .locals 1

    .line 262
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 264
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    int-to-double v1, p3

    .line 168
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    move v0, p2

    :goto_0
    add-int v7, p2, p3

    if-ge v0, v7, :cond_0

    .line 173
    aget-wide v7, p1, v0

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v1

    add-double/2addr v3, v5

    return-wide v3

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

    .line 254
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DII)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->test([D[DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 215
    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v1

    .line 216
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    move v0, p3

    :goto_0
    add-int v7, p3, p4

    if-ge v0, v7, :cond_0

    .line 221
    aget-wide v7, p2, v0

    aget-wide v9, p1, v0

    sub-double/2addr v9, v3

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v1

    add-double/2addr v3, v5

    return-wide v3

    :cond_1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getN()J
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->increment(D)V

    :cond_0
    return-void
.end method
