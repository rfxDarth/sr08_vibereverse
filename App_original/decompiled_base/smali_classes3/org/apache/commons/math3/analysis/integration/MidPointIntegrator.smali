.class public Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "MidPointIntegrator.java"


# static fields
.field public static final MIDPOINT_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x40

    .line 96
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 62
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/16 p1, 0x40

    if-gt p6, p1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    const/16 p1, 0x40

    if-gt p2, p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private stage(IDDD)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    long-to-double v5, v3

    div-double v5, p6, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v9, v5, v7

    add-double v9, p4, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v0, v13, v3

    if-gez v0, :cond_0

    move-object/from16 v0, p0

    .line 134
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    add-double/2addr v9, v5

    add-long/2addr v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    mul-double v11, v11, v5

    add-double v1, p2, v11

    mul-double v1, v1, v7

    return-wide v1
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 147
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMin()D

    move-result-wide v4

    .line 148
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMax()D

    move-result-wide v1

    sub-double v6, v1, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v1, v6, v8

    add-double/2addr v1, v4

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v1

    mul-double v1, v1, v6

    move-wide v2, v1

    .line 154
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 155
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v1

    .line 156
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->stage(IDDD)D

    move-result-wide v10

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMinimalIterationCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    sub-double v0, v10, v2

    .line 158
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getRelativeAccuracy()D

    move-result-wide v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    add-double/2addr v2, v14

    mul-double v12, v12, v2

    mul-double v12, v12, v8

    cmpg-double v2, v0, v12

    if-lez v2, :cond_0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v2

    cmpg-double v12, v0, v2

    if-gtz v12, :cond_1

    :cond_0
    return-wide v10

    :cond_1
    move-object/from16 v0, p0

    move-wide v2, v10

    goto :goto_0
.end method
