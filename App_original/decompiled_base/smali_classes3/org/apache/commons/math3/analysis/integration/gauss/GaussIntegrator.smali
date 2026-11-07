.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.super Ljava/lang/Object;
.source "GaussIntegrator.java"


# instance fields
.field private final points:[D

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 58
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 60
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    .line 61
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getNumberOfPoints()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v0, v0

    return v0
.end method

.method public getPoint(I)D
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getWeight(I)D
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    .line 92
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 93
    aget-wide v6, v5, v4

    .line 94
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v8, v5, v4

    .line 95
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v5

    mul-double v8, v8, v5

    sub-double/2addr v8, v2

    add-double v2, v0, v8

    sub-double v0, v2, v0

    sub-double/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    move-wide v10, v2

    move-wide v2, v0

    move-wide v0, v10

    goto :goto_0

    :cond_0
    return-wide v0
.end method
