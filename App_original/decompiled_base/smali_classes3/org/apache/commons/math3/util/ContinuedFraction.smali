.class public abstract Lorg/apache/commons/math3/util/ContinuedFraction;
.super Ljava/lang/Object;
.source "ContinuedFraction.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-8


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 84
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DDI)D
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 126
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide v9, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 129
    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v7

    const-wide v8, 0x358dee7a4ad4b81fL    # 1.0E-50

    if-eqz v7, :cond_0

    move-wide v5, v8

    :cond_0
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    move-wide v12, v10

    const/4 v14, 0x1

    move-wide v10, v5

    :goto_0
    if-ge v14, v3, :cond_6

    .line 139
    invoke-virtual {v0, v14, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v15

    .line 140
    invoke-virtual {v0, v14, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getB(ID)D

    move-result-wide v17

    mul-double v12, v12, v17

    add-double v19, v15, v12

    const-wide/16 v21, 0x0

    const-wide v23, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 143
    invoke-static/range {v19 .. v24}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide/from16 v19, v8

    :cond_1
    div-double v17, v17, v5

    add-double v21, v15, v17

    const-wide/16 v23, 0x0

    const-wide v25, 0x358dee7a4ad4b81fL    # 1.0E-50

    .line 147
    invoke-static/range {v21 .. v26}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_2

    move-wide v5, v8

    goto :goto_1

    :cond_2
    move-wide/from16 v5, v21

    :goto_1
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v15, v12, v19

    mul-double v17, v5, v15

    mul-double v10, v10, v17

    .line 155
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v19

    if-nez v19, :cond_5

    .line 159
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_4

    sub-double v17, v17, v12

    .line 164
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpg-double v17, v12, p3

    if-gez v17, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-wide v12, v15

    goto :goto_0

    .line 160
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v3, v5, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 156
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v3, v5, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    :cond_6
    :goto_2
    if-ge v14, v3, :cond_7

    return-wide v10

    .line 175
    :cond_7
    new-instance v5, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v5, v6, v3, v2}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v5
.end method

.method public evaluate(DI)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 97
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract getA(ID)D
.end method

.method protected abstract getB(ID)D
.end method
