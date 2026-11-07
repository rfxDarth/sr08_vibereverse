.class public Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "LegendreGaussIntegrator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ABSCISSAS_2:[D

.field private static final ABSCISSAS_3:[D

.field private static final ABSCISSAS_4:[D

.field private static final ABSCISSAS_5:[D

.field private static final WEIGHTS_2:[D

.field private static final WEIGHTS_3:[D

.field private static final WEIGHTS_4:[D

.field private static final WEIGHTS_5:[D


# instance fields
.field private final abscissas:[D

.field private final weights:[D


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 59
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    const/4 v0, 0x2

    new-array v1, v0, [D

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    sput-object v1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_2:[D

    .line 65
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_2:[D

    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 71
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const/4 v3, 0x3

    new-array v5, v3, [D

    aput-wide v7, v5, v6

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v4

    aput-wide v1, v5, v0

    sput-object v5, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_3:[D

    .line 78
    new-array v1, v3, [D

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_3:[D

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 85
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    const-wide/high16 v13, 0x402e000000000000L    # 15.0

    add-double/2addr v9, v13

    const-wide v15, 0x4041800000000000L    # 35.0

    div-double/2addr v9, v15

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    sub-double v17, v13, v17

    div-double v17, v17, v15

    move-wide/from16 v19, v1

    const/4 v5, 0x2

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    sub-double v17, v13, v17

    div-double v17, v17, v15

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v21

    mul-double v21, v21, v11

    add-double v21, v21, v13

    div-double v21, v21, v15

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const/4 v2, 0x4

    const/16 v21, 0x3

    new-array v3, v2, [D

    aput-wide v9, v3, v6

    aput-wide v0, v3, v4

    aput-wide v17, v3, v5

    aput-wide v13, v3, v21

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_4:[D

    .line 93
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v9

    const-wide v13, 0x4056800000000000L    # 90.0

    sub-double v0, v13, v0

    const-wide v17, 0x4066800000000000L    # 180.0

    div-double v0, v0, v17

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v9

    add-double v22, v22, v13

    div-double v22, v22, v17

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    mul-double v24, v24, v9

    add-double v24, v24, v13

    div-double v24, v24, v17

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    mul-double v19, v19, v9

    sub-double v13, v13, v19

    div-double v13, v13, v17

    new-array v3, v2, [D

    aput-wide v0, v3, v6

    aput-wide v22, v3, v4

    aput-wide v24, v3, v5

    aput-wide v13, v3, v21

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_4:[D

    const-wide v0, 0x4051800000000000L    # 70.0

    .line 101
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v9, v9, v11

    add-double/2addr v9, v15

    const-wide v13, 0x404f800000000000L    # 63.0

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    sub-double v17, v15, v17

    div-double v17, v17, v13

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    sub-double v17, v15, v17

    div-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v11

    add-double v22, v22, v15

    div-double v22, v22, v13

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const/4 v3, 0x5

    new-array v3, v3, [D

    aput-wide v9, v3, v6

    aput-wide v0, v3, v4

    aput-wide v7, v3, v5

    aput-wide v17, v3, v21

    aput-wide v11, v3, v2

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_5:[D

    .line 110
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v7, 0x402a000000000000L    # 13.0

    mul-double v0, v0, v7

    const-wide v9, 0x4074200000000000L    # 322.0

    sub-double v0, v9, v0

    const-wide v11, 0x408c200000000000L    # 900.0

    div-double/2addr v0, v11

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    mul-double v13, v13, v7

    add-double/2addr v13, v9

    div-double/2addr v13, v11

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    mul-double v15, v15, v7

    add-double/2addr v15, v9

    div-double/2addr v15, v11

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    sub-double v9, v9, v17

    div-double/2addr v9, v11

    const/4 v3, 0x5

    new-array v3, v3, [D

    aput-wide v0, v3, v6

    aput-wide v13, v3, v4

    const-wide v0, 0x3fe23456789abcdfL    # 0.5688888888888889

    aput-wide v0, v3, v5

    aput-wide v15, v3, v21

    aput-wide v9, v3, v2

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_5:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fe1c71c71c71c72L    # 0.5555555555555556
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3fe1c71c71c71c72L    # 0.5555555555555556
    .end array-data
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 180
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .line 143
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-ne p1, p4, :cond_0

    .line 158
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_5:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 159
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_5:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    return-void

    .line 162
    :cond_0
    new-instance p5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const/4 p1, 0x1

    aput-object p7, p3, p1

    aput-object p4, p3, p2

    invoke-direct {p5, p6, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p5

    .line 154
    :cond_1
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_4:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 155
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_4:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    return-void

    .line 150
    :cond_2
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_3:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 151
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_3:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    return-void

    .line 146
    :cond_3
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_2:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 147
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_2:[D

    iput-object p1, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    .line 199
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method

.method private stage(I)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 249
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMax()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMin()D

    move-result-wide v4

    sub-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    .line 253
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMin()D

    move-result-wide v6

    add-double/2addr v6, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v1, :cond_1

    const/4 v12, 0x0

    .line 256
    :goto_1
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    array-length v14, v13

    if-ge v12, v14, :cond_0

    .line 257
    iget-object v14, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    aget-wide v15, v14, v12

    aget-wide v17, v13, v12

    mul-double v17, v17, v4

    add-double v13, v6, v17

    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->computeObjectiveValue(D)D

    move-result-wide v13

    mul-double v15, v15, v13

    add-double/2addr v8, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-double/2addr v6, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    mul-double v4, v4, v8

    return-wide v4
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->stage(I)D

    move-result-wide v1

    const/4 v3, 0x2

    .line 215
    :goto_0
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->stage(I)D

    move-result-wide v4

    sub-double v6, v4, v1

    .line 218
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getRelativeAccuracy()D

    move-result-wide v10

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    add-double/2addr v1, v12

    mul-double v10, v10, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v1

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    .line 224
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v10}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMinimalIterationCount()I

    move-result v11

    if-lt v10, v11, :cond_0

    cmpg-double v10, v6, v8

    if-gtz v10, :cond_0

    return-wide v4

    :cond_0
    div-double/2addr v6, v8

    .line 229
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    array-length v8, v8

    int-to-double v8, v8

    div-double/2addr v1, v8

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    int-to-double v6, v3

    mul-double v1, v1, v6

    double-to-int v1, v1

    add-int/lit8 v3, v3, 0x1

    .line 230
    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 232
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    move-wide v1, v4

    goto :goto_0
.end method
