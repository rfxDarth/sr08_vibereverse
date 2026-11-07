.class public Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
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

    .line 145
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 143
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    const/4 v0, 0x0

    .line 123
    aget-wide v1, p3, v0

    const/4 v3, 0x1

    .line 124
    aget-wide v4, p3, v3

    sub-double/2addr v1, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v1, v6, v1

    sub-double/2addr v4, p1

    div-double/2addr v6, v4

    const/4 p1, 0x2

    .line 126
    new-array p1, p1, [D

    aput-wide v1, p1, v0

    aput-wide v6, p1, v3

    return-object p1
.end method

.method public varargs value(D[D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    const/4 v0, 0x0

    .line 102
    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/function/Logit;->access$000(DDD)D

    move-result-wide p1

    return-wide p1
.end method
