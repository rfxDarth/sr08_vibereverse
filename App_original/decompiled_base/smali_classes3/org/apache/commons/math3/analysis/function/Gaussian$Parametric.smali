.class public Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Gaussian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
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

    .line 188
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 191
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 189
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 186
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    const/4 v0, 0x0

    .line 158
    aget-wide v1, p3, v0

    const/4 v3, 0x1

    .line 159
    aget-wide v4, p3, v3

    sub-double v6, p1, v4

    const/4 p1, 0x2

    .line 160
    aget-wide p2, p3, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v8, p2, v4

    mul-double v8, v8, p2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 163
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v8

    mul-double v1, v1, v8

    mul-double v1, v1, v4

    mul-double v1, v1, v10

    mul-double v1, v1, v6

    mul-double v6, v6, v1

    div-double/2addr v6, p2

    const/4 p2, 0x3

    .line 167
    new-array p2, p2, [D

    aput-wide v8, p2, v0

    aput-wide v1, p2, v3

    aput-wide v6, p2, p1

    return-object p2
.end method

.method public varargs value(D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    const/4 v0, 0x1

    .line 133
    aget-wide v0, p3, v0

    sub-double v2, p1, v0

    const/4 p1, 0x2

    .line 134
    aget-wide p1, p3, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p1

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double v6, p1, v0

    const/4 p1, 0x0

    .line 135
    aget-wide v4, p3, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide p1

    return-wide p1
.end method
