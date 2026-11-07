.class public Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 195
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 198
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 196
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 193
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 152
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    const/4 v2, 0x2

    .line 154
    aget-wide v7, v1, v2

    const/4 v15, 0x3

    .line 155
    aget-wide v9, v1, v15

    const/16 v16, 0x1

    .line 157
    aget-wide v3, v1, v16

    sub-double v3, v3, p1

    const/16 v17, 0x5

    .line 158
    aget-wide v5, v1, v17

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v13, v11, v5

    mul-double v5, v7, v3

    .line 159
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v18

    mul-double v20, v9, v18

    add-double v5, v20, v11

    const/16 v22, 0x0

    .line 162
    aget-wide v11, v1, v22

    const/16 v23, 0x4

    aget-wide v24, v1, v23

    sub-double v11, v11, v24

    mul-double v11, v11, v13

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v24

    div-double v11, v11, v24

    move-wide/from16 p1, v3

    const/4 v1, 0x2

    neg-double v2, v11

    div-double v24, v2, v5

    move-wide v2, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v11

    const-wide/16 v11, 0x0

    move-wide/from16 v28, v26

    move-wide/from16 v26, v2

    move-wide/from16 v3, p1

    .line 166
    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v30

    mul-double v5, v24, v7

    mul-double v32, v5, v20

    mul-double v5, v24, v3

    mul-double v20, v20, v5

    mul-double v24, v24, v18

    const-wide/16 v5, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 170
    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v2

    .line 171
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double v11, v28, v4

    mul-double v11, v11, v13

    const/4 v4, 0x6

    .line 173
    new-array v4, v4, [D

    aput-wide v30, v4, v22

    aput-wide v32, v4, v16

    aput-wide v20, v4, v1

    aput-wide v24, v4, v15

    aput-wide v2, v4, v23

    aput-wide v11, v4, v17

    return-object v4
.end method

.method public varargs value(D[D)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 127
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    const/4 v2, 0x1

    .line 128
    aget-wide v2, v1, v2

    sub-double v4, v2, p1

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    const/4 v2, 0x2

    aget-wide v8, v1, v2

    const/4 v2, 0x3

    aget-wide v10, v1, v2

    const/4 v2, 0x4

    aget-wide v12, v1, v2

    const/4 v2, 0x5

    aget-wide v2, v1, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v2

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method
