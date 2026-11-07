.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "MultiDirectionalSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0


# instance fields
.field private final gamma:D

.field private final khi:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 59
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 72
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 89
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 90
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .line 101
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([DDD)V

    return-void
.end method

.method public constructor <init>([DDD)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 117
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 118
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .line 129
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([[DDD)V

    return-void
.end method

.method public constructor <init>([[DDD)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 148
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 149
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    return-void
.end method

.method private evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "[",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            "D",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optim/PointValuePair;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v1

    .line 200
    aget-object v2, p2, v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getDimension()I

    move-result v2

    const/4 v3, 0x1

    .line 202
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 203
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v4

    .line 204
    new-array v5, v2, [D

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 206
    aget-wide v7, v1, v6

    aget-wide v9, v4, v6

    sub-double v9, v7, v9

    mul-double v9, v9, p3

    add-double/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 208
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v4, v5, v6, v7, v0}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p5

    .line 212
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v2

    const/4 v0, 0x0

    .line 158
    aget-object v6, v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 161
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    .line 163
    invoke-interface {v5, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p2

    .line 166
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v1

    .line 168
    invoke-interface {v5, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 170
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoints([Lorg/apache/commons/math3/optim/PointValuePair;)V

    :cond_0
    return-void

    .line 177
    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    return-void
.end method
