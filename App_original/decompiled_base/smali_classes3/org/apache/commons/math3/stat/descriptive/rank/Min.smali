.class public Lorg/apache/commons/math3/stat/descriptive/rank/Min;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Min.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28d411943a32997bL


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 59
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 70
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Min;Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Min;Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->setData([D)V

    .line 169
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    .line 170
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 89
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Min;
    .locals 1

    .line 150
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    .line 152
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Min;Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    aget-wide v0, p1, p2

    move v2, p2

    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_2

    .line 137
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    aget-wide v3, p1, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    move-wide v0, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0

    :cond_3
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getN()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 98
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 3

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->value:D

    .line 81
    :cond_1
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->n:J

    return-void
.end method
