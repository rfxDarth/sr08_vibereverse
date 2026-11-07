.class public Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
.super Ljava/lang/Object;
.source "Sigmoid.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Sigmoid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 147
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 145
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->validateParameters([D)V

    neg-double p1, p1

    .line 126
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    div-double p1, v0, p1

    sub-double/2addr v0, p1

    const/4 p3, 0x2

    .line 128
    new-array p3, p3, [D

    const/4 v2, 0x0

    aput-wide v0, p3, v2

    const/4 v0, 0x1

    aput-wide p1, p3, v0

    return-object p3
.end method

.method public varargs value(D[D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->validateParameters([D)V

    const/4 v0, 0x0

    .line 105
    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->access$000(DDD)D

    move-result-wide p1

    return-wide p1
.end method
