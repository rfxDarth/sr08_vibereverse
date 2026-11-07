.class public Lorg/apache/commons/math3/ode/ContinuousOutputModel;
.super Ljava/lang/Object;
.source "ContinuousOutputModel.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13ad9f94dd1a30b6L


# instance fields
.field private finalTime:D

.field private forward:Z

.field private index:I

.field private initialTime:D

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/sampling/StepInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 117
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    return-void
.end method

.method private locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I
    .locals 6

    .line 365
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpg-double v0, p1, v4

    if-gez v0, :cond_0

    return v3

    .line 368
    :cond_0
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    cmpl-double p3, p1, v3

    if-lez p3, :cond_1

    return v1

    :cond_1
    return v2

    .line 374
    :cond_2
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    cmpl-double v0, p1, v4

    if-lez v0, :cond_3

    return v3

    .line 376
    :cond_3
    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    cmpg-double p3, p1, v3

    if-gez p3, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputModel;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 133
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 138
    iget-wide v2, p1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 139
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_5

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    iget-boolean v2, p1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    xor-int/2addr v0, v2

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 152
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    .line 153
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v5

    sub-double v5, v3, v5

    .line 155
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInitialTime()D

    move-result-wide v7

    sub-double/2addr v7, v3

    .line 156
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v9

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_3

    .line 163
    :goto_0
    iget-object p1, p1, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 164
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    return-void

    .line 157
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 148
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 143
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->getInterpolatedState()[D

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getFinalTime()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    return-wide v0
.end method

.method public getInitialTime()D
    .locals 2

    .line 211
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    return-wide v0
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object p1

    return-object p1
.end method

.method public getInterpolatedState()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 194
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 200
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    .line 201
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    :cond_1
    return-void
.end method

.method public init(D[DD)V
    .locals 0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 174
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->initialTime:D

    .line 175
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->finalTime:D

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->forward:Z

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 178
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 248
    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 249
    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v5

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    .line 251
    iget-object v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 252
    iget-object v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 253
    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v11

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double v11, v11, v7

    .line 257
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v13

    if-gtz v13, :cond_0

    .line 258
    iput v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 259
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    return-void

    .line 262
    :cond_0
    invoke-direct {v0, v1, v2, v10}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 263
    iput v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 264
    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    return-void

    :cond_1
    :goto_0
    sub-int v3, v9, v4

    const/4 v10, 0x5

    if-le v3, v10, :cond_8

    .line 272
    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 273
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v10

    if-gez v10, :cond_2

    .line 275
    iget v9, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 276
    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v10

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v12

    add-double/2addr v10, v12

    mul-double v10, v10, v7

    move-wide v11, v10

    goto :goto_1

    :cond_2
    if-lez v10, :cond_7

    .line 278
    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 279
    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v5

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v13

    add-double/2addr v5, v13

    mul-double v5, v5, v7

    :goto_1
    add-int v3, v4, v9

    .line 287
    div-int/lit8 v3, v3, 0x2

    .line 288
    iget-object v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 289
    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v13

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v15

    add-double/2addr v13, v15

    mul-double v13, v13, v7

    sub-double v15, v13, v5

    .line 291
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    const-wide v19, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v10, v17, v19

    if-ltz v10, :cond_4

    sub-double v17, v11, v13

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    cmpg-double v10, v21, v19

    if-gez v10, :cond_3

    goto :goto_2

    :cond_3
    sub-double v19, v11, v5

    sub-double v21, v1, v11

    sub-double v13, v1, v13

    sub-double v23, v1, v5

    mul-double v25, v13, v23

    mul-double v25, v25, v15

    int-to-double v7, v9

    mul-double v25, v25, v7

    mul-double v23, v23, v21

    mul-double v23, v23, v19

    int-to-double v7, v3

    mul-double v23, v23, v7

    sub-double v25, v25, v23

    mul-double v21, v21, v13

    mul-double v21, v21, v17

    int-to-double v7, v4

    mul-double v21, v21, v7

    add-double v25, v25, v21

    mul-double v17, v17, v15

    mul-double v17, v17, v19

    div-double v25, v25, v17

    .line 308
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v7

    double-to-int v3, v7

    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_3

    .line 293
    :cond_4
    :goto_2
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    :goto_3
    add-int/lit8 v3, v4, 0x1

    mul-int/lit8 v7, v4, 0x9

    add-int/2addr v7, v9

    .line 312
    div-int/lit8 v7, v7, 0xa

    invoke-static {v3, v7}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v7, v9, -0x1

    mul-int/lit8 v8, v9, 0x9

    add-int/2addr v8, v4

    .line 313
    div-int/lit8 v8, v8, 0xa

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 314
    iget v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    if-ge v8, v3, :cond_5

    .line 315
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_4

    :cond_5
    if-le v8, v7, :cond_6

    .line 317
    iput v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    :cond_6
    :goto_4
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0

    .line 282
    :cond_7
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    return-void

    .line 323
    :cond_8
    iput v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    .line 324
    :goto_5
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    if-gt v3, v9, :cond_9

    iget-object v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->locatePoint(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)I

    move-result v3

    if-lez v3, :cond_9

    .line 325
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    goto :goto_5

    .line 328
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->steps:Ljava/util/List;

    iget v4, v0, Lorg/apache/commons/math3/ode/ContinuousOutputModel;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    return-void
.end method
