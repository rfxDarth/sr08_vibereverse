.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "NelderMeadSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0

.field private static final DEFAULT_RHO:D = 1.0

.field private static final DEFAULT_SIGMA:D = 0.5


# instance fields
.field private final gamma:D

.field private final khi:D

.field private final rho:D

.field private final sigma:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 12

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 69
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    return-void
.end method

.method public constructor <init>(IDDDD)V
    .locals 12

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 109
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    return-void
.end method

.method public constructor <init>(IDDDDD)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 90
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 91
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 92
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 93
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    .line 121
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([DDDDD)V

    return-void
.end method

.method public constructor <init>([DDDDD)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 141
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 142
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 143
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 144
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    .line 156
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([[DDDDD)V

    return-void
.end method

.method public constructor <init>([[DDDDD)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 178
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 179
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 180
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 181
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    return-void
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 189
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getDimension()I

    move-result v3

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    .line 193
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v6

    .line 194
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    .line 195
    invoke-virtual {v7}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v8

    .line 199
    new-array v9, v3, [D

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    .line 201
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_0

    .line 203
    aget-wide v13, v9, v12

    aget-wide v15, v11, v12

    add-double/2addr v13, v15

    aput-wide v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v3

    div-double/2addr v10, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_2

    .line 208
    aget-wide v13, v9, v12

    mul-double v13, v13, v10

    aput-wide v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 212
    :cond_2
    new-array v10, v3, [D

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_3

    .line 214
    aget-wide v12, v9, v11

    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    aget-wide v16, v8, v11

    sub-double v16, v12, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 216
    :cond_3
    new-instance v11, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v12

    invoke-direct {v11, v10, v12, v13, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 219
    invoke-interface {v2, v5, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gtz v12, :cond_4

    invoke-interface {v2, v11, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_4

    .line 222
    invoke-virtual {v0, v11, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    return-void

    .line 223
    :cond_4
    invoke-interface {v2, v11, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7

    .line 225
    new-array v5, v3, [D

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_5

    .line 227
    aget-wide v7, v9, v6

    iget-wide v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    aget-wide v14, v10, v6

    sub-double/2addr v14, v7

    mul-double v12, v12, v14

    add-double/2addr v7, v12

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 229
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v6

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 232
    invoke-interface {v2, v3, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_6

    .line 234
    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    return-void

    .line 237
    :cond_6
    invoke-virtual {v0, v11, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    return-void

    .line 240
    :cond_7
    invoke-interface {v2, v11, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_9

    .line 242
    new-array v5, v3, [D

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_8

    .line 244
    aget-wide v7, v9, v6

    iget-wide v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    aget-wide v14, v10, v6

    sub-double/2addr v14, v7

    mul-double v12, v12, v14

    add-double/2addr v7, v12

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 246
    :cond_8
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v7

    invoke-direct {v6, v5, v7, v8, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 248
    invoke-interface {v2, v6, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_b

    .line 250
    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    return-void

    .line 255
    :cond_9
    new-array v5, v3, [D

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_a

    .line 257
    aget-wide v10, v9, v6

    iget-wide v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    aget-wide v14, v8, v6

    sub-double v14, v10, v14

    mul-double v12, v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 259
    :cond_a
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v8

    invoke-direct {v6, v5, v8, v9, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 262
    invoke-interface {v2, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    .line 264
    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    return-void

    .line 270
    :cond_b
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v5

    const/4 v6, 0x1

    :goto_7
    if-gt v6, v3, :cond_d

    .line 272
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v3, :cond_c

    .line 274
    aget-wide v9, v5, v8

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    aget-wide v13, v7, v8

    sub-double/2addr v13, v9

    mul-double v11, v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 276
    :cond_c
    new-instance v8, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v8, v7, v9, v10, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    invoke-virtual {v0, v6, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 278
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    return-void
.end method
