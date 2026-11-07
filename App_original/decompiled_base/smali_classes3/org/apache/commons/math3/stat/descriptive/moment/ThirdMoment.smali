.class Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
.source "ThirdMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6c81a51b22018cd7L


# instance fields
.field protected m3:D

.field protected nDevSq:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 70
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 71
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    .line 82
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 114
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 115
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .locals 1

    .line 124
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 126
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    return-object v0
.end method

.method public getResult()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 8

    .line 90
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m1:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 94
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m2:D

    .line 95
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    .line 96
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    mul-double p1, p1, v2

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    .line 97
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->n:J

    long-to-double p1, p1

    .line 98
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDev:D

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    sub-double/2addr v2, v6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr p1, v4

    mul-double v0, v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    mul-double v0, v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->dev:D

    mul-double v0, v0, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    return-void
.end method
