.class public Lorg/apache/commons/math3/analysis/function/Logit;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    .line 62
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 39
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static value(DDD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    sub-double p2, p0, p2

    sub-double/2addr p4, p0

    div-double/2addr p2, p4

    .line 165
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    .line 163
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 68
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 175
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_3

    .line 178
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [D

    .line 181
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    sub-double v5, v0, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    sub-double/2addr v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    if-le v2, v3, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 186
    aput-wide v0, v4, v3

    :cond_0
    const/4 v0, 0x2

    :goto_0
    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, -0x2

    .line 194
    aget-wide v5, v4, v1

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    sub-double v5, v0, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 202
    iget-wide v9, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    sub-double/2addr v9, v0

    div-double/2addr v7, v9

    move-wide v0, v5

    move-wide v9, v7

    :goto_1
    if-ge v3, v2, :cond_2

    add-double v11, v0, v9

    .line 205
    aput-wide v11, v4, v3

    neg-int v11, v3

    int-to-double v11, v11

    mul-double v11, v11, v5

    mul-double v0, v0, v11

    int-to-double v11, v3

    mul-double v11, v11, v7

    mul-double v9, v9, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method
