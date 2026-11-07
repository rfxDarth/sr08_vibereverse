.class public Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "RombergIntegrator.java"


# static fields
.field public static final ROMBERG_MAX_ITERATIONS_COUNT:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x20

    .line 97
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

    .line 63
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/16 p1, 0x20

    if-gt p6, p1, :cond_0

    return-void

    .line 65
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

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    const/16 p1, 0x20

    if-gt p2, p1, :cond_0

    return-void

    .line 87
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
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 105
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 106
    new-array v3, v1, [D

    .line 107
    new-array v1, v1, [D

    .line 109
    new-instance v4, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v4}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    const/4 v5, 0x0

    .line 110
    invoke-virtual {v4, v0, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 111
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 112
    aget-wide v6, v1, v5

    .line 115
    :goto_0
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v8}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v8

    .line 122
    invoke-virtual {v4, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v9

    aput-wide v9, v3, v5

    .line 123
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    const/4 v9, 0x1

    :goto_1
    if-gt v9, v8, :cond_0

    mul-int/lit8 v10, v9, 0x2

    const-wide/16 v11, 0x1

    shl-long v13, v11, v10

    sub-long/2addr v13, v11

    long-to-double v10, v13

    add-int/lit8 v12, v9, -0x1

    .line 127
    aget-wide v13, v3, v12

    .line 128
    aget-wide v15, v1, v12

    sub-double v15, v13, v15

    div-double/2addr v15, v10

    add-double/2addr v13, v15

    aput-wide v13, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 130
    :cond_0
    aget-wide v9, v3, v8

    .line 131
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getMinimalIterationCount()I

    move-result v11

    if-lt v8, v11, :cond_2

    sub-double v11, v9, v6

    .line 132
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    .line 133
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getRelativeAccuracy()D

    move-result-wide v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v6, v15

    mul-double v13, v13, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v6

    cmpg-double v6, v11, v13

    if-lez v6, :cond_1

    .line 134
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v6

    cmpg-double v8, v11, v6

    if-gtz v8, :cond_2

    :cond_1
    return-wide v9

    :cond_2
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-wide v6, v9

    goto :goto_0
.end method
