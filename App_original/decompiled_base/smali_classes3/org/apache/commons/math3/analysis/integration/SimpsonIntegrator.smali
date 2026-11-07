.class public Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SimpsonIntegrator.java"


# static fields
.field public static final SIMPSON_MAX_ITERATIONS_COUNT:I = 0x40


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


# virtual methods
.method protected doIntegrate()D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 104
    new-instance v1, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 105
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v2

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 106
    invoke-virtual {v1, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v8

    mul-double v8, v8, v5

    invoke-virtual {v1, v0, v7}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v1

    sub-double/2addr v8, v1

    div-double/2addr v8, v3

    return-wide v8

    .line 111
    :cond_0
    invoke-virtual {v1, v0, v7}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    .line 113
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v11

    .line 114
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    mul-double v13, v11, v5

    sub-double/2addr v13, v7

    div-double v7, v13, v3

    .line 116
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v13

    if-lt v2, v13, :cond_2

    sub-double v13, v7, v9

    .line 117
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    .line 118
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getRelativeAccuracy()D

    move-result-wide v15

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    add-double v9, v9, v17

    mul-double v15, v15, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v15, v15, v9

    cmpg-double v2, v13, v15

    if-lez v2, :cond_1

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v9

    cmpg-double v2, v13, v9

    if-gtz v2, :cond_2

    :cond_1
    return-wide v7

    :cond_2
    move-wide v9, v7

    move-wide v7, v11

    goto :goto_0
.end method
